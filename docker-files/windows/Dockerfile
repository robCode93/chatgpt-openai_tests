FROM microsoft/windowsservercore:10.0.14393.3392

SHELL ["powershell", "-Command", "$ErrorActionPreference = 'Stop';"]

# Set the locale
RUN Set-Culture en-US

# Install the IIS role
RUN Install-WindowsFeature -Name Web-Server

# Start the IIS service
RUN Start-Service W3SVC

EXPOSE 80

CMD ["ping", "localhost", "-t"]
