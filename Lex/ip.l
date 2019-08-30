%{
    #include "ip.h"


%} 
%% 
[:]{1}            return COLON;
"Connection-specific DNS Suffix" return CONNECTION;
"Link-local IPv6 Address"        return IP6;
"IPv4 Address"                   return IP4;
"Subnet Mask"                    return SUBNETMASK;
"Default Gateway"                return GATEWAY;

[\. \.]+                                 ;
[0-9a-f]{4}[::][0-9a-f]{4}[::][0-9a-f]{4}[::][0-9a-f]{4} 

                       
%% 

