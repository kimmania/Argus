
https://www.helpnetsecurity.com/2024/10/23/argus-open-source-information-gathering-toolkit/
https://github.com/jasonxtn/Argus
Argus is an all-in-one, Python-powered toolkit designed to streamline the process of information gathering and reconnaissance. With a user-friendly interface and a suite of powerful modules, Argus empowers you to explore networks, web applications, and security configurations efficiently and effectively.
 

Talked to Aziz to go through the list of items most meaningful to him relative to work he does:

* Network and infrastructure tool
  * 9 - Open Ports Scan: Scan the target for open ports and services.
    * simple text output of the list of open ports
    * required nmap command installation on the linux container 
  * 5 - Domain Info: Gather information such as registrar details and expiry dates.
  * 1 - Associated Hosts: Discover domains associated with the target.
  * 14 - TLS Cipher Suites: List the supported TLS ciphers on the server.
  * 18 - WHOIS Lookup: Perform WHOIS queries to gather domain ownership details.
  * 19 - Zone Transfer: Attempt to perform DNS zone transfers.
* Web Application Analysis
  * 23 - CMS detection: Detect the type of CMS used, like WordPress, Joomla, etc.
  * 24 - Cookies analyzer: Analyze cookies for secure attributes and potential privacy issues.
  * 26 - Crawler: Crawl the site to uncover data and map out its structure.
  * 27 - Robots.txt analyzer: Analyze the robots.txt file for hidden resources.
  * 28 - Directory finder: Look for directories that may not be indexed publicly.
  * 33 - Sitemap parsing: Extract URLs from the site’s sitemap.
  * 35 - Technology stack detection: Identify the technologies and frameworks the site uses.
  * 36 - Third-party integrations: Discover any third-party services integrated into the site.
* Security & Threat Intelligence
  * 39 - Data leak detection: Check for potential data leaks and sensitive data exposure.
  * 41 - Firewall detection: Identify whether a firewall or WAF is protecting the target.
  * 43 - HTTP headers: Extract and evaluate HTTP response headers.
  * 44 - HTTP security features: Check for secure HTTP headers such as HSTS and CSP.
  * 52 - Subdomain enumeration: Discover subdomains of the target domain.



Commands:
To Build: docker build -t argus .
Run interactive: docker run -it --name argus argus
  Note: The above line puts you right at the cmd of the running argus application
        Enter a number for executing the possible options
        exit to exit out of the interactive session/stops the container
If you also want to connect to the console: 
  docker run -it --name argus argus
  python argus.py
  NOTE: if you exit here, that puts you back to the container's console. An additional exit will exit out of the running container.

To cleanup the container: 
  docker rm argus
  docker rmi argus:latest
