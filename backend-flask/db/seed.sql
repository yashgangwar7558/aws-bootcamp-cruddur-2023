-- this file was manually created
INSERT INTO public.users (display_name, handle, email, cognito_user_id)
VALUES
  ('Tester', 'tester7558' , 'phantomarts06@gmail.com','9fe15027-1f09-48dc-b4b6-54a5ed1b55ea'),
  ('Random', 'random7558', 'gangwaryash06@gmail.com','a6530500-c19b-4675-a040-be9568e45c3c'),
  ('Yash', 'yash7558', 'yash06@gmail.com','y6530500-c19b-4675-a040-be9568e45c3d');

INSERT INTO public.activities (user_uuid, message, expires_at)
VALUES
  (
    (SELECT uuid from public.users WHERE users.handle = 'tester7558' LIMIT 1),
    'This was tester7558 imported as seed data!',
    current_timestamp + interval '10 day'
  )
  -- (
  --   (SELECT uuid from public.users WHERE users.handle = 'bayko' LIMIT 1),
  --   'This was bayko imported as seed data!',
  --   current_timestamp + interval '10 day'
  -- )