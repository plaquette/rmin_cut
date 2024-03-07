FROM perl:5.38.2-slim

RUN apt-get update && \
    apt-get install -y bash && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /usr/src/app

COPY RminCutter.pl .

CMD ["bash"]
