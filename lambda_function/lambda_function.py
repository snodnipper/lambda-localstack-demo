import json

def lambda_handler(event, context):
    # Extract name from input event
    name = event.get("name", "World")
    # Return a greeting
    return {
        "statusCode": 200,
        "body": json.dumps({"greeting": f"Hello, {name}"})
    }

