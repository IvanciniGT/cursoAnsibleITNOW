- protocol: http
  url: /index.html
  statusCode: 200
  contentPattern: "Soy el fichero de la web"

- protocol: http
  url: /
  statusCode: 200
  contentPattern: "Versión 2"


respuesta_prueba:
    results:
    - item:
        protocol: http
        url: /index.html
        statusCode: 200
        contentPattern: "Soy el fichero de la web"
      content : <<<<<<<<<<<<<<<<<<<
      cookies :
      cookies_string :
      elapsed :
      msg :
      path :
      redirected :
      status :
    - item:
        protocol: http
        url: /
        statusCode: 200
        contentPattern: "Versión 2"
      content : <<<<<<<<<<<<<<<<<<<
      cookies :
      cookies_string :
      elapsed :
      msg :
      path :
      redirected :
      status :



- item:
    protocol: http
    url: /index.html
    statusCode: 200
    contentPattern: "Soy el fichero de la web" <<<<
  content : <<<<<<<<<<<<<<<<<<<
  cookies :
  cookies_string :
  elapsed :
  msg :
  path :
  redirected :
  status :

- item:
    protocol: http
    url: /
    statusCode: 200
    contentPattern: "Versión 2"
  content : <<<<<<<<<<<<<<<<<<<
  cookies :
  cookies_string :
  elapsed :
  msg :
  path :
  redirected :
  status :
