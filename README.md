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
service:
    image: service
~~~

