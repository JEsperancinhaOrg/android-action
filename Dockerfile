FROM cimg/android:2023.08

COPY entrypoint.sh ~/entrypoint.sh

ENTRYPOINT  ["~/entrypoint.sh"]