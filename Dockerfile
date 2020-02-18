FROM blang/latex:ubuntu

# xindy
RUN apt-get update \
    && apt-get install biber -y \
    && apt-get install xindy -y \
    && rm -rf /var/lib/apt/lists/*