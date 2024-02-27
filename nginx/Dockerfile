FROM nginx as development
RUN rm /etc/nginx/conf.d/default.conf
COPY nginx-dev.conf /etc/nginx/conf.d/default.conf

FROM nginx as release
RUN rm /etc/nginx/conf.d/default.conf
COPY nginx-prod.conf /etc/nginx/conf.d/default.conf