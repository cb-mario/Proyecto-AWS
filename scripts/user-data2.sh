#!/bin/bash
dnf install -y nginx
systemctl enable --now nginx

cat > /usr/share/nginx/html/index.html <<EOF
<!doctype html>
<html lang="es">
<head>
  <meta charset="utf-8">
  <title>Librer&iacute;a Tinta - Servidor 2</title>
</head>
<body style="background-color:#fff3cd">
  <h1>Librer&iacute;a Tinta &middot; SERVIDOR 2</h1>
  <p>Tu librer&iacute;a de barrio. <strong>Versi&oacute;n 2 de la web.</strong></p>

  <h2>D&oacute;nde estamos</h2>
  <p>Calle Mayor, 15 &middot; 03160 Almorad&iacute; (Alicante)</p>

  <h2>Horario</h2>
  <p>Lunes a viernes: 9:30 &ndash; 13:30 y 17:00 &ndash; 20:30<br>
     S&aacute;bados: 10:00 &ndash; 14:00<br>
     Domingos: cerrado</p>

  <h2>Recomendaci&oacute;n del mes</h2>
  <p><strong>H&aacute;bitos at&oacute;micos</strong>, de James Clear. C&oacute;mo peque&ntilde;os cambios diarios acaban dando grandes resultados.</p>

  <hr>
  <small>Servidor 2 &middot; Desplegado por Mario Cerd&aacute; en el servidor $(hostname) el $(date '+%d/%m/%Y %H:%M')</small>
</body>
</html>
EOF