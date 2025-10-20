FROM swipl:latest

# Install make if needed (Debian-based)
RUN apt-get update && apt-get install -y make && rm -rf /var/lib/apt/lists/*

RUN swipl -g "pack_install(plunit_assert, [interactive(false)]), halt."

COPY . /app
WORKDIR /app

CMD ["make", "test"]
