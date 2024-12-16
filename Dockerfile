# Base Image
FROM odoo:18.0

# Set working directory
WORKDIR /var/lib/odoo

# Copy custom files (if any)
COPY ./custom-addons /mnt/extra-addons

# Ensure dependencies are installed
RUN apt-get update && apt-get install -y \
    python3-dev \
    libxml2-dev \
    libxslt1-dev \
    zlib1g-dev \
    && apt-get clean

# Set environment variables
ENV ODOO_EXTRA_ADDONS=/mnt/extra-addons

# Expose default Odoo port
EXPOSE 8069

# Start Odoo server
CMD ["odoo"]
