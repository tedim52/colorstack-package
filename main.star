postgres = import_module("github.com/kurtosis-tech/postgres-package/main.star")
redis = import_module("github.com/kurtosis-tech/redis-package/main.star")
# colorstack_backend = import_module("...")

def run(plan):
    # Spin up postgres db
   postgres_service = postgres.run(plan)

   # Spin up redis service
   redis_service = redis.run(plan)


   # Spin up color stacks frontend/backend 
   # pass in information about postgres + redis that color stack services depend on

    # TODO: Rami Abdou to implement a colorstack package once he open sources his codebase smh
   # colorstack_backend.run(plan, postgres_service.url, redis_service.hostname, redis_service.port)
   plan.add_service("colorstack-backend", ServiceConfig(image="ubuntu:latest"))

