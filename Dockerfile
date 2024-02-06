FROM nginx:alpine
COPY . /index.html
EXPOSE 9002
CMD [ "nginx","-g","daemon off;" ]

