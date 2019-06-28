FROM ubuntu:16.04

ENV CACHE_PATH=/opt/share
RUN mkdir -p  ${CACHE_PATH}
WORKDIR ${CACHE_PATH}
COPY sources.list /etc/apt/sources.list

RUN apt-get -yqq update
RUN apt-get install -y gcc make curl wget
# apt-key adv --keyserver pool.sks-keyservers.net --recv-keys ED444FF07D8D0BF6
RUN wget https://archive.kali.org/archive-key.asc && apt-key add archive-key.asc
RUN echo "deb http://mirrors.ustc.edu.cn/kali kali-rolling main non-free contrib" >> /etc/apt/sources.list
RUN echo "deb-src http://mirrors.ustc.edu.cn/kali kali-rolling main non-free contrib" >> /etc/apt/sources.list
RUN apt-get -yqq update && apt-get install -y wget curl make gcc git
RUN apt-get -f install ace-voip amap automater braa casefile cdpsnarf cisco-torch \
cookie-cadger copy-router-config dmitry dnmap dnsenum dnsmap dnsrecon dnstracer dnswalk \
dotdotpwn enum4linux enumiax exploitdb fierce firewalk fragroute fragrouter ghost-phisher \
golismero goofile lbd maltego-teeth masscan metagoofil miranda nmap p0f parsero recon-ng \
set smtp-user-enum snmpcheck sslcaudit sslsplit sslstrip sslyze thc-ipv6 theharvester \
tlssled twofi urlcrazy wireshark wol-e xplico ismtp intrace hping3 bbqsql bed \
cisco-auditing-tool cisco-global-exploiter cisco-ocs cisco-torch copy-router-config \
doona dotdotpwn hexorbase jsql lynis nmap ohrwurm \
oscanner powerfuzzer sfuzz sidguesser \
siparmyknife sqlmap sqlninja sqlsus thc-ipv6 tnscmd10g unix-privesc-check yersinia \
aircrack-ng asleap bluelog blueranger bluesnarfer bully cowpatty crackle eapmd5pass \
fern-wifi-cracker ghost-phisher giskismet gqrx kalibrate-rtl killerbee kismet mdk3 \
mfcuk mfoc mfterm multimon-ng pixiewps reaver redfang spooftooph wifi-honey wifitap \
wifite apache-users arachni bbqsql blindelephant cutycapt davtest deblaze \
dirb dirbuster fimap funkload grabber jboss-autopwn joomscan jsql maltego-teeth \
padbuster paros parsero plecost powerfuzzer proxystrike recon-ng skipfish sqlmap \
sqlninja sqlsus ua-tester uniscan w3af webscarab websploit wfuzz wpscan xsser \
zaproxy burpsuite dnschef fiked hamster-sidejack hexinject iaxflood inviteflood \
ismtp mitmproxy ohrwurm protos-sip rebind responder rtpbreak rtpinsertsound \
rtpmixsound sctpscan siparmyknife sipp sipvicious sniffjoke sslsplit sslstrip \
thc-ipv6 voiphopper webscarab wifi-honey wireshark xspy yersinia zaproxy \
cryptcat cymothoa dbd dns2tcp httptunnel intersect nishang \
polenum powersploit pwnat ridenum sbd u3-pwn webshells weevely casefile \
cutycapt dos2unix dradis keepnote metagoofil nipper-ng pipal \
armitage backdoor-factory cisco-auditing-tool cisco-global-exploiter \
cisco-ocs cisco-torch crackle jboss-autopwn linux-exploit-suggester \
maltego-teeth set shellnoob sqlmap thc-ipv6 yersinia beef-xss binwalk \
bulk-extractor chntpw cuckoo dc3dd ddrescue dumpzilla extundelete \
foremost galleta guymager p0f pdf-parser \
pdfid pdgmail peepdf volatility xplico dhcpig funkload iaxflood \
inviteflood ipv6-toolkit mdk3 reaver rtpflood slowhttptest t50 \
termineter thc-ipv6 thc-ssl-dos burpsuite cewl chntpw \
cisco-auditing-tool cmospwd creddump crunch findmyhash gpp-decrypt \
hash-identifier hexorbase john johnny keimpx maltego-teeth maskprocessor \
multiforcer ncrack oclgausscrack pack patator polenum rainbowcrack \
rcracki-mt rsmangler statsprocessor thc-pptp-bruter truecrack \
webscarab wordlists zaproxy apktool dex2jar python-distorm3 \
edb-debugger jad javasnoop jd ollydbg smali valgrind yara \
android-sdk apktool arduino dex2jar sakis3g smali

RUN wget http://www.morningstarsecurity.com/downloads/bing-ip2hosts-0.4.tar.gz \
&& tar -xzvf bing-ip2hosts-0.4.tar.gz && cp bing-ip2hosts-0.4/bing-ip2hosts /usr/local/bin/

## Add Yours Project Hear


USER root
CMD ['/bin/bash']
