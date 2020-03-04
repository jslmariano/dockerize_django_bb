## CAPSL Bulletin Board Development With Docker Compose

Requirements:

- Docker CE ( Could be hosted on windows, vmware or virtualbox | Debian 9 )
- Python 3.5.3
- Django 2.2

### Notes

- Please see .env file for database configuration
- No need to import dummy database it wll be handled by `docker-compose`
- *Email* setup is for local only and not for production please see console logs for email confirmations.
- - If you bring up your docker in background please use `docker-compose logs` to peek on console


### Local Dev Instructions

1. Install docker from this tutorial https://docs.docker.com/install/
1. Extract the files on your workspace - `/<path_to_workspace>/dockerize_capsl_bb`
1. Go to your project directory - `/<path_to_workspace>/dockerize_capsl_bb`
1. Build images - `docker-compose build` (This may take a while for 1st time, go grab your coffee :) )
1. Start services - `docker-compose up`
1. Browse your applciation on - `localhost`
1. Test scripts are available, `docker exec -it dockerize_capsl_bb_web_1 /usr/local/bin/python manage.py test`

### Users

* User - Password
* * admin - admin (superuser)
* * test1 - abcd1234
* * zjordan - abcd1234
* * test2 - abcd1234
* * test3 - abcd1234
* * reyeskevin - abcd1234


### TROUBLESHOOTING

- If nginx is running then stop it because docker web container will listen to port 80
- If postgresql is running then stop it because docker postgresql container will listen to port 5432
- If using VirtualBox from windows you should mount you files properly for permission correction - `mount -t vboxsf -o rw,uid=1000,gid=1000 <share_name> <mount_path>`
- Local host url - `localhost`
