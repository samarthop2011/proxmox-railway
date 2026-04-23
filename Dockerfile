# Use the image you specified
FROM hopingboyz/proxmox8

# Set environment variables from your command
ENV VNC_USERNAME=admin
ENV VNC_PASSWORD=sam24
ENV RAM=32768
ENV CPU=8
ENV DISK_SIZE=100G

# Railway uses a single port for the public domain, 
# but internally these will be open.
EXPOSE 6080
EXPOSE 8006
EXPOSE 2222
EXPOSE 5900

# The base image already has an ENTRYPOINT/CMD, 
# so we don't need to add tail -f here.
