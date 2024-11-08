
https://www.helpnetsecurity.com/2024/10/23/argus-open-source-information-gathering-toolkit/
https://github.com/jasonxtn/Argus
Argus is an all-in-one, Python-powered toolkit designed to streamline the process of information gathering and reconnaissance. With a user-friendly interface and a suite of powerful modules, Argus empowers you to explore networks, web applications, and security configurations efficiently and effectively.
 

Talked to Aziz to go through the list of items most meaningful to him relative to work he does:

* Network and infrastructure tool
  * Open Ports Scan: Scan the target for open ports and services.
    * simple text output of the list of open ports
    * required nmap command installation on the linux container 
  * Domain Info: Gather information such as registrar details and expiry dates.
  * Associated Hosts: Discover domains associated with the target.
  * TLS Cipher Suites: List the supported TLS ciphers on the server.
  * WHOIS Lookup: Perform WHOIS queries to gather domain ownership details.
  * Zone Transfer: Attempt to perform DNS zone transfers.
* Web Application Analysis
  * CMS detection: Detect the type of CMS used, like WordPress, Joomla, etc.
  * Cookies analyzer: Analyze cookies for secure attributes and potential privacy issues.
  * Crawler: Crawl the site to uncover data and map out its structure.
  * Robots.txt analyzer: Analyze the robots.txt file for hidden resources.
  * Directory finder: Look for directories that may not be indexed publicly.
  * Sitemap parsing: Extract URLs from the site’s sitemap.
  * Technology stack detection: Identify the technologies and frameworks the site uses.
  * Third-party integrations: Discover any third-party services integrated into the site.
* Security & Threat Intelligence
  * Data leak detection: Check for potential data leaks and sensitive data exposure.
  * Firewall detection: Identify whether a firewall or WAF is protecting the target.
  * HTTP headers: Extract and evaluate HTTP response headers.
  * HTTP security features: Check for secure HTTP headers such as HSTS and CSP.
  * Subdomain enumeration: Discover subdomains of the target domain.



Commands:
Build: docker build -t argus .
Run interactive: docker run -it --name argus argus /bin/bash
