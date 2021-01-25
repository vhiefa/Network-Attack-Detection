%this function convert a string of appName feature into an integer of appName extracted feature
function new_app_name = convertAppName(app_name)
    if strcmp (app_name,'HTTPImageTransfer')
        new_app_name=1;
    end
    if strcmp (app_name, 'SecureWeb')
        new_app_name=2;
        end
    if strcmp (app_name,'NetBIOS-IP')
        new_app_name=3;
        end
    if strcmp (app_name, 'POP')
        new_app_name=4;
        end
    if strcmp (app_name,'HTTPWeb')
        new_app_name=5;
        end
    if strcmp (app_name, 'DNS')
        new_app_name=6;
        end
    if strcmp (app_name, 'WindowsFileSharing')
        new_app_name=7;
        end
    if strcmp (app_name, 'SMTP')
        new_app_name=8;
        end
    if strcmp (app_name, 'ICMP')
        new_app_name=9;
    end
    if strcmp (app_name, 'FTP')
        new_app_name=10;
    end
    if strcmp (app_name,'Unknown_UDP')
        new_app_name=11;
    end
    if strcmp (app_name, 'IMAP')
        new_app_name=12;
        end
    if strcmp (app_name,'MiscApplication')
        new_app_name=13;
        end
    if strcmp (app_name, 'IRC')
        new_app_name=14;
        end
    if strcmp (app_name,'TimeServer')
        new_app_name=15;
        end
    if strcmp (app_name, 'Unknown_TCP')
        new_app_name=16;
        end
    if strcmp (app_name, 'Gnutella')
        new_app_name=17;
        end
    if strcmp (app_name, 'AOL-ICQ')
        new_app_name=18;
        end
    if strcmp (app_name, 'NETBEUI')
        new_app_name=19;
    end
    if strcmp (app_name, 'Tacacs')
        new_app_name=20;
    end
    if strcmp (app_name,'MDQS')
        new_app_name=21;
    end
    if strcmp (app_name, 'MSTerminalServices')
        new_app_name=22;
        end
    if strcmp (app_name,'MSMQ')
        new_app_name=23;
        end
    if strcmp (app_name, 'POP-port')
        new_app_name=24;
        end
    if strcmp (app_name,'Common-P2P-Port')
        new_app_name=25;
        end
    if strcmp (app_name, 'Anet')
        new_app_name=26;
        end
    if strcmp (app_name, 'Ingres')
        new_app_name=27;
        end
    if strcmp (app_name, 'VNC')
        new_app_name=28;
        end
    if strcmp (app_name, 'Authentication')
        new_app_name=29;
    end
    if strcmp (app_name, 'RPC')
        new_app_name=30;
    end
    if strcmp (app_name,'PPTP')
        new_app_name=31;
    end
    if strcmp (app_name, 'H.323')
        new_app_name=32;
        end
    if strcmp (app_name,'SunRPC')
        new_app_name=33;
        end
    if strcmp (app_name, 'Yahoo')
        new_app_name=34;
        end
    if strcmp (app_name,'RTSP')
        new_app_name=35;
        end
    if strcmp (app_name, 'ManagementServices')
        new_app_name=36;
        end
    if strcmp (app_name, 'XWindows')
        new_app_name=37;
        end
    if strcmp (app_name, 'Telnet')
        new_app_name=38;
        end
    if strcmp (app_name, 'Webmin')
        new_app_name=39;
    end
    if strcmp (app_name, 'Oracle')
        new_app_name=40;
    end
    if strcmp (app_name,'Flowgen')
        new_app_name=41;
    end
    if strcmp (app_name, 'Misc-Ports')
        new_app_name=42;
        end
    if strcmp (app_name,'LDAP')
        new_app_name=43;
        end
    if strcmp (app_name, 'NNTPNews')
        new_app_name=44;
        end
    if strcmp (app_name,'XFER')
        new_app_name=45;
        end
    if strcmp (app_name, 'NFS')
        new_app_name=46;
        end
    if strcmp (app_name, 'Hosts2-Ns')
        new_app_name=47;
        end
    if strcmp (app_name, 'Misc-Mail-Port')
        new_app_name=48;
        end
    if strcmp (app_name, 'Filenet')
        new_app_name=49;
    end
    if strcmp (app_name, 'Misc-DB')
        new_app_name=50;
    end
    if strcmp (app_name,'Timbuktu')
        new_app_name=51;
    end
    if strcmp (app_name, 'IPSec')
        new_app_name=52;
        end
    if strcmp (app_name,'MS-SQL')
        new_app_name=53;
        end
    if strcmp (app_name, 'Hotline')
        new_app_name=54;
        end
    if strcmp (app_name,'NortonAntiVirus')
        new_app_name=55;
        end
    if strcmp (app_name, 'SNMP-Ports')
        new_app_name=56;
        end
    if strcmp (app_name, 'OpenNap')
        new_app_name=57;
        end
    if strcmp (app_name, 'MSN')
        new_app_name=58;
        end
    if strcmp (app_name, 'rsh')
        new_app_name=59;
    end
    if strcmp (app_name, 'Groove')
        new_app_name=60;
    end
    if strcmp (app_name,'Network-Config-Ports')
        new_app_name=61;
    end
    if strcmp (app_name, 'dsp3270')
        new_app_name=62;
        end
    if strcmp (app_name,'MiscApp')
        new_app_name=63;
        end
    if strcmp (app_name, 'PCAnywhere')
        new_app_name=64;
        end
    if strcmp (app_name,'SSL-Shell')
        new_app_name=65;
        end
    if strcmp (app_name, 'rexec')
        new_app_name=66;
        end
    if strcmp (app_name, 'MicrosoftMediaServer')
        new_app_name=67;
        end
    if strcmp (app_name, 'BGP')
        new_app_name=68;
        end
    if strcmp (app_name, 'Google')
        new_app_name=69;
    end
    if strcmp (app_name, 'SMS')
        new_app_name=70;
    end
    if strcmp (app_name,'Real')
        new_app_name=71;
    end
    if strcmp (app_name, 'BitTorrent')
        new_app_name=72;
        end
    if strcmp (app_name,'StreamingAudio')
        new_app_name=73;
        end
    if strcmp (app_name, 'rlogin')
        new_app_name=74;
        end
    if strcmp (app_name,'Intellex')
        new_app_name=75;
        end
    if strcmp (app_name, 'Squid')
        new_app_name=76;
        end
    if strcmp (app_name, 'Citrix')
        new_app_name=77;
        end
    if strcmp (app_name, 'Printer')
        new_app_name=78;
        end
    if strcmp (app_name, 'PostgreSQL')
        new_app_name=79;
    end
    if strcmp (app_name, 'WebMediaDocuments')
        new_app_name=80;
    end
    if strcmp (app_name,'IGMP')
        new_app_name=81;
    end
    if strcmp (app_name, 'NTP')
        new_app_name=82;
        end
    if strcmp (app_name,'WebMediaAudio')
        new_app_name=83;
        end
    if strcmp (app_name, 'SSDP')
        new_app_name=84;
        end
    if strcmp (app_name,'DNS-Port')
        new_app_name=85;
    end
end
