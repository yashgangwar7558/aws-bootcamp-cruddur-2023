-- this file was manually created
INSERT INTO public.users (display_name, handle, email, cognito_user_id)
VALUES
  ('Andrew Brown', 'andrewbrown' , 'andrew@gmail.com','MOCK'),
  ('Andrew Bayko', 'bayko', 'bayko@gmail.com','MOCK');

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