# Simple-Auth

This image allows you to easily use basic auth with a container.

## Example

~~~
simple-auth:
    image: xachman/simple-auth
    links:
        - service:host
    ports:
        - 3999:80
    environment:
        PASSWORD: password
        USER: user
		HOST: host
		PORT: 80
service:
    image: service
~~~


In this case we assume the service is running on port 80 in the service container and we mapped the service to the host called host in the simple-auth container.

