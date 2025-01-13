FROM myoung34/github-runner:latest

# Update package list and install prerequisites
RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y curl gnupg && \
    rm -rf /var/lib/apt/lists/*

# Add NodeSource repository and install Node.js 21
RUN curl -fsSL https://deb.nodesource.com/setup_22.x | bash - && \
    apt-get install -y nodejs && \
    rm -rf /var/lib/apt/lists/*

# Verify Node.js installation
RUN node -v && npm -v