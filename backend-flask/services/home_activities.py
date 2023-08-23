from datetime import datetime, timedelta, timezone

# honeycomb----
# from opentelemetry import trace
# tracer = trace.get_tracer("home.activities")

# postgres db
from lib.db import db


class HomeActivities:
    def run(cognito_user_id=None):
      # honeycomb----
      # with tracer.start_as_current_span("home-activites-mock-data"):
      #   span = trace.get_current_span()
      #   now = datetime.now(timezone.utc).astimezone()
      #   span.set_attribute("app.now", now.isoformat())

        sql = db.template('activities', 'home')
        results = db.query_array_json(sql)
        return results

        # honeycomb----
        # span.set_attribute("app.result_length", len(results))

        # return results
