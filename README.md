This is a sample project to pass environment variables to heroku containers with --build-args

1) Clone it into a directory

2) Run 'docker build --build-arg environment-variable=123 -t sample-image .'

3) Run 'docker tag (image id) registry.heroku.com/your-app/worker'

4) Run 'Run 'docker push registry.heroku.com/testenv2/worker'

5) Run 'heroku container:release worker -a registry.heroku.com/testenv2/worker' Note: You need to run this command before running 'heroku scale worker=1 -a (app)', because heroku wouldn't be able to find process type (worker), so you need to release the process type (worker) before you can set where the worker should be ran.

6) You can test it by running: heroku logs -a (app name) OR heroku local

Note: If your app doesn't run, please do 'heroku scale worker=1 -a (app)'
