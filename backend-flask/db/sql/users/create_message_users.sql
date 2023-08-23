SELECT 
  users.uuid,
  users.display_name,
  users.handle,
  CASE users.cognito_user_id = %(cognito_user_id)s
  WHEN TRUE THEN
    'sender'
  WHEN FALSE THEN
    'recv'
  ELSE
    'other'
  END as kind
FROM public.users
WHERE
  users.cognito_user_id = %(cognito_user_id)s  -- if cognito id matches it will assisgn it as sender
  OR 
  users.handle = %(user_receiver_handle)s  -- if recver handle matches it will assisgn it as receiver