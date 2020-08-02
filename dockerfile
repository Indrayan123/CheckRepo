From microsoft/azure-cli:latest

ADD dotnet-install.sh /home/dotnet1/
RUN ./home/dotnet1/dotnet-install.sh
RUN mkdir -p /home/ExtractorTool
RUN mkdir -p /home/ExtractorTool/configFile
COPYconfig_MultiAPI.json /home/ExtractorTool/configFile/
RUN sed -e "s/\r//g" /home/ExtractorTool/configFile/config_MultiAPI.json> /home/ExtractorTool/configFile/config_MultiAPI_1.json