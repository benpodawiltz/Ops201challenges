#!/bin/bash
#Script Name:   Ops challenge 13
#Author:        Ben_podawiltz
#Date:          3.22.21
#Revision:      
#Purpose:       Create a bash script that asks a user to type a domain, then displays information about the #               typed domain. Operations that must be used include:
#[x]whois
#[x]dig
#[x]host
#[x]nslookup
#               Output the results to a single .txt file and open it with your favorite text editior. Must  #               use one variable and one function

#variable
  echo "Please enter a domain to query:"
    read -r domain

#function

function domain_query (){
            while true
            do 
                echo -e "This\vis\vthe\vwhois\vquery"
                    whois "$domain" >> domain_query.txt #whois is a listing of records about the ownership or domains and the owners
                echo -e "This\vis\vthe\vdig\vquery"
                    dig  "$domain" >> domain_query.txt #dig is used to query DNS servers (Domain Information Groper) including host addressese, mail exchanges, name servers, and related info
                echo -e "This\vis\vthe\vhost\vquery"
                    host "$domain" >> domain_query.txt #DNS lookup utility to find the ip addresses. Reverse lookups to find DNS associated with an Ip address
                echo -e "This\vis\vthe\vnslookup\vquery"
                    nslookup "$domain" >> domain_query.txt #DNS query does NOT use OS local Domain Name Systme to resolver library. May include output from other sources, host files and Network Information Service
                break 
             
            done
}


#call function
domain_query


#open text editor 
nano domain_query.txt

#Sources [https://en.wikipedia.org/wiki/Nslookup][https://www.howtogeek.com/680086/how-to-use-the-whois-command-on-linux/][https://www.computerhope.com/unix/host.htm][https://www.howtogeek.com/663056/how-to-use-the-dig-command-on-linux/]