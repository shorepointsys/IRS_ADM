FROM odoo:18  # Replace with the correct Odoo version
COPY . /mnt/extra-addons/
EXPOSE 8069
CMD ["odoo"]
