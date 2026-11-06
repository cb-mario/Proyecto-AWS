#!/bin/bash
dnf install -y nginx
systemctl enable --now nginx

cat > /usr/share/nginx/html/index.html <<EOF
<!doctype html>
<html lang="es">
<head>
  <meta charset="utf-8">
  <title>Librería Tinta</title>
</head>
<body>
  <h1>Librería Tinta</h1>
  <p>Tu librería de barrio.</p>

  <h2>Dónde estamos</h2>
  <p>Calle Mayor, 15 · 03160 Almoradí (Alicante)</p>

  <h2>Horario</h2>
  <p>Lunes a viernes: 9:30 – 13:30 y 17:00 – 20:30<br>
     Sábados: 10:00 – 14:00<br>
     Domingos: cerrado</p>

  <h2>Recomendación del mes</h2>
  <p><strong>Nadie me puede lastimar</strong>, de David Goggins. Un libro sobre disciplina y sobre ir más allá de lo que crees que es tu límite.</p>

  <hr>
  <small>Desplegado por Mario Cerdá en el servidor $(hostname) el $(date '+%d/%m/%Y %H:%M')</small>
</body>
</html>
EOF