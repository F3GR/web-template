#!/bin/bash

arg0="$1"
arg1="$2"
dir_name="${arg0}${arg1}"

mkdir "$dir_name" &&
mkdir ${dir_name}/Frontend/ &&
mkdir ${dir_name}/Backend/ &&
touch "${dir_name}/Backend/app.js" &&
cd "$dir_name" &&
git init -b main . &&

cat >> "${dir_name}/.gitignore" <<EOF
node_modules/
.env/
vars/
EOF

cat >> "${dir_name}/Frontend/index.html" <<EOF
<!DOCTYPE html>
<html lang="">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="./reset.css" rel="stylesheet" />
        <title>New project</title>
    </head>
    <body>
        
    </body>
</html>
EOF

cat > "${dir_name}/Frontend/reset.css" <<EOF
:root {
    --system-ui: system-ui, "Segoe UI", Roboto, Helvetica, Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol";
}

* {
    margin: 0;
    padding: 0;
    border-collapse: collapse;
    border-spacing: 0;
    font-family: var(--system-ui);
    overflow-wrap: break-word;
    hyphens: auto;
}

*::not(img),
*::before,
*::after {
    margin: inherit;
    padding: inherit;
    box-sizing: border-box;
}

html {
    font-size: 62.5%;
}

body {
    font-size: 1.6rem;
    line-height: 1;
    letter-spacing: 0.05rem;
}

div, span, applet, object, iframe,
h1, h2, h3, h4, h5, h6, p, blockquote, pre,
a, abbr, acronym, address, big, cite, code,
del, dfn, em, img, ins, kbd, q, s, samp,
small, strike, strong, sub, sup, tt, var,
b, u, i, center,
dl, dt, dd, ol, ul, li,
fieldset, form, label, legend,
table, caption, tbody, tfoot, thead, tr, th, td,
article, aside, canvas, details, embed, 
figure, figcaption, footer, header, hgroup, 
menu, nav, output, ruby, section, summary,
time, mark, audio, video, button, textarea, select, input {
	border: 0;
	font: inherit;
	vertical-align: baseline;
}

img, picture, video, canvas, svg,
article, aside, details, figcaption, figure,
footer, header, hgroup, menu, nav, section {
    display: block;
}

blockquote, q {
	quotes: none;
}

blockquote:before, 
blockquote:after,
q:before, 
q:after {
	content: '';
	content: none;
}

table {
	border-spacing: 0;
}

input::-webkit-outer-spin-button,
input::-webkit-inner-spin-button {
  -webkit-appearance: none;
  margin: 0;
}

input[type=number] {
  -moz-appearance: textfield;
}

-webkit-search-cancel-button {
  display: none;
}
EOF



