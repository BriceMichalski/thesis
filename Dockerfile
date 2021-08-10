FROM nginx:alpine

COPY ./thesis.conf /etc/nginx/conf.d/thesis.conf
RUN rm -f /etc/nginx/conf.d/default.conf \
    && mkdir -p /data/thesis/ \
    && curl -L  https://drive.google.com/uc\?id\=179KR0LrskRXl5SLA3Xs8Bl1dPxsW081W -o /data/thesis/MICHALSKI_Brice_Memoire2021.pdf

RUN chmod 777 /data/thesis/MICHALSKI_Brice_Memoire2021.pdf