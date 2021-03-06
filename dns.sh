# Get Data
function GetData() {
    cnacc_domain=(
        "https://raw.githubusercontent.com/Loyalsoldier/v2ray-rules-dat/release/direct-list.txt"
        "https://raw.githubusercontent.com/hezhijie0327/DHDb/main/dhdb_domestic.txt"
        "https://raw.githubusercontent.com/hq450/fancyss/master/rules/WhiteList_new.txt"
        "https://raw.githubusercontent.com/hq450/fancyss/master/rules/apple_china.txt"
        "https://raw.githubusercontent.com/hq450/fancyss/master/rules/cdn.txt"
        "https://raw.githubusercontent.com/Loyalsoldier/v2ray-rules-dat/release/win-update.txt"
        "https://raw.githubusercontent.com/Loyalsoldier/v2ray-rules-dat/release/apple-cn.txt"
	    "https://trli.coding.net/p/file/d/file/git/raw/master/china.txt"
    )
    cnacc_trusted=(
        "https://raw.githubusercontent.com/felixonmars/dnsmasq-china-list/master/accelerated-domains.china.conf"
        "https://raw.githubusercontent.com/felixonmars/dnsmasq-china-list/master/apple.china.conf"
        "https://raw.githubusercontent.com/felixonmars/dnsmasq-china-list/master/google.china.conf"
    )
    gfwlist_base64=(
        "https://raw.githubusercontent.com/Loukky/gfwlist-by-loukky/master/gfwlist.txt"
        "https://raw.githubusercontent.com/gfwlist/gfwlist/master/gfwlist.txt"
        "https://raw.githubusercontent.com/poctopus/gfwlist-plus/master/gfwlist-plus.txt"
    )
    gfwlist_domain=(
    	"https://trli.coding.net/p/file/d/cn-blocked-domain/git/raw/master/publish/domains.txt"
        "https://raw.githubusercontent.com/Loyalsoldier/v2ray-rules-dat/release/gfw.txt"
    	"https://raw.githubusercontent.com/schrebra/Windows.10.DNS.Block.List/main/hosts.txt"
        "https://raw.githubusercontent.com/nickspaargaren/no-google/master/pihole-google.txt"
        "https://raw.githubusercontent.com/nickspaargaren/no-google/master/categories/youtubeparsed"
        "https://raw.githubusercontent.com/nickspaargaren/no-google/master/categories/shortlinksparsed"
        "https://raw.githubusercontent.com/nickspaargaren/no-google/master/categories/proxiesparsed"
        "https://raw.githubusercontent.com/nickspaargaren/no-google/master/categories/productsparsed"
        "https://raw.githubusercontent.com/nickspaargaren/no-google/master/categories/mailparsed"
        "https://raw.githubusercontent.com/nickspaargaren/no-google/master/categories/generalparsed"
        "https://raw.githubusercontent.com/nickspaargaren/no-google/master/categories/fontsparsed"
        "https://raw.githubusercontent.com/nickspaargaren/no-google/master/categories/firebaseparsed"
        "https://raw.githubusercontent.com/nickspaargaren/no-google/master/categories/doubleclickparsed"
        "https://raw.githubusercontent.com/nickspaargaren/no-google/master/categories/domainsparsed"
        "https://raw.githubusercontent.com/nickspaargaren/no-google/master/categories/dnsparsed"
        "https://raw.githubusercontent.com/nickspaargaren/no-google/master/categories/androidparsed"
        "https://raw.githubusercontent.com/nickspaargaren/no-google/master/categories/analyticsparsed"
        "https://raw.githubusercontent.com/nickspaargaren/no-google/master/categories/fiberparsed"
        "https://raw.githubusercontent.com/Loyalsoldier/cn-blocked-domain/release/domains.txt"
        "https://raw.githubusercontent.com/Loyalsoldier/v2ray-rules-dat/release/proxy-list.txt"
        "https://raw.githubusercontent.com/pexcn/gfwlist-extras/master/gfwlist-extras.txt"
        "https://raw.githubusercontent.com/hq450/fancyss/master/rules/gfwlist.conf"
        "https://raw.githubusercontent.com/Ewpratten/youtube_ad_blocklist/master/blocklist.txt"
        "https://raw.githubusercontent.com/Loyalsoldier/v2ray-rules-dat/release/greatfire.txt|"
        "https://raw.githubusercontent.com/kboghdady/youTube_ads_4_pi-hole/master/youtubelist.txt"
        "https://raw.githubusercontent.com/Perflyst/PiHoleBlocklist/master/SmartTV.txt"
        "https://raw.githubusercontent.com/Perflyst/PiHoleBlocklist/master/AmazonFireTV.txt"
        "https://raw.githubusercontent.com/Loyalsoldier/v2ray-rules-dat/release/win-spy.txt"
        "https://raw.githubusercontent.com/Loyalsoldier/v2ray-rules-dat/release/win-extra.txt"
        "https://raw.githubusercontent.com/RootFiber/youtube-ads/main/youtubeblacklist.txt"
        "https://raw.githubusercontent.com/RootFiber/youtube-ads/main/blockeverything.txt"
        "https://raw.githubusercontent.com/hufilter/hufilter/master/hufilter-dns.txt"
	    "https://trli.coding.net/p/file/d/file/git/raw/master/globe.txt"
        "https://raw.githubusercontent.com/sonofhelga/yicklist/master/yick.list"
        "https://raw.githubusercontent.com/RootFiber/youtube-ads/main/ad-block-YouTube-Project.txt"
    )    
    gfwlist2agh_modify=(
        "https://raw.githubusercontent.com/hezhijie0327/GFWList2AGH/source/data/data_modify.txt"
    )
    mkdir ./dns-hosts && cd ./dns-hosts
    for cnacc_domain_task in "${!cnacc_domain[@]}"; do
        curl -s -L --connect-timeout 15 "${cnacc_domain[$cnacc_domain_task]}" >> ./cnacc_domain.tmp
    done
    for cnacc_trusted_task in "${!cnacc_trusted[@]}"; do
        curl -s -L --connect-timeout 15 "${cnacc_trusted[$cnacc_trusted_task]}" >> ./cnacc_trusted.tmp
    done
    for gfwlist_base64_task in "${!gfwlist_base64[@]}"; do
        curl -s -L --connect-timeout 15 "${gfwlist_base64[$gfwlist_base64_task]}" | base64 -d >> ./gfwlist_base64.tmp
    done
    for gfwlist_domain_task in "${!gfwlist_domain[@]}"; do
        curl -s -L --connect-timeout 15 "${gfwlist_domain[$gfwlist_domain_task]}" >> ./gfwlist_domain.tmp
    done
    for gfwlist2agh_modify_task in "${!gfwlist2agh_modify[@]}"; do
        curl -s -L --connect-timeout 15 "${gfwlist2agh_modify[$gfwlist2agh_modify_task]}" >> ./gfwlist2agh_modify.tmp
    done
}
# Analyse Data
function AnalyseData() {
    cnacc_data=($(domain_regex="^(([a-z]{1})|([a-z]{1}[a-z]{1})|([a-z]{1}[0-9]{1})|([0-9]{1}[a-z]{1})|([a-z0-9][-\.a-z0-9]{1,61}[a-z0-9]))\.([a-z]{2,13}|[a-z0-9-]{2,30}\.[a-z]{2,3})$" && lite_domain_regex="^([a-z]{2,13}|[a-z0-9-]{2,30}\.[a-z]{2,3})$" && cat "./gfwlist2agh_modify.tmp" | grep -v "\#" | grep "\(\@\%\@\)\|\(\@\%\!\)\|\(\!\&\@\)\|\(\@\@\@\)" | tr -d "\!\%\&\(\)\*\@" | grep -E "${domain_regex}" | sort | uniq > "./cnacc_addition.tmp" && cat "./gfwlist2agh_modify.tmp" | grep -v "\#" | grep "\(\!\%\!\)\|\(\@\&\!\)\|\(\!\%\@\)\|\(\!\!\!\)" | tr -d "\!\%\&\(\)\*\@" | grep -E "${domain_regex}" | sort | uniq > "./cnacc_subtraction.tmp" && cat "./gfwlist2agh_modify.tmp" | grep -v "\#" | grep "\(\*\%\*\)\|\(\*\*\*\)" | tr -d "\!\%\&\(\)\*\@" | grep -E "${domain_regex}" | xargs | sed "s/\ /\|/g" | sort | uniq > "./cnacc_exclusion.tmp" && cat "./gfwlist2agh_modify.tmp" | grep -v "\#" | grep "\(\*\%\*\)\|\(\*\*\*\)" | tr -d "\!\%\&\(\)\*\@" | grep -E "${lite_domain_regex}" | xargs | sed "s/\ /\|/g" | sort | uniq > "./lite_cnacc_exclusion.tmp" && cat "./gfwlist2agh_modify.tmp" | grep -v "\#" | grep "\(\!\%\*\)\|\(\!\*\*\)" | tr -d "\!\%\&\(\)\*\@" | grep -E "${domain_regex}" | xargs | sed "s/\ /\|/g" | sort | uniq > "./cnacc_keyword.tmp" && cat "./gfwlist2agh_modify.tmp" | grep -v "\#" | grep "\(\!\%\*\)\|\(\!\*\*\)" | tr -d "\!\%\&\(\)\*\@" | grep -E "${lite_domain_regex}" | xargs | sed "s/\ /\|/g" | sort | uniq > "./lite_cnacc_keyword.tmp" && cat "./gfwlist2agh_modify.tmp" | grep -v "\#" | grep "\(\@\&\@\)\|\(\@\&\!\)\|\(\!\%\@\)\|\(\@\@\@\)" | tr -d "\!\%\&\(\)\*\@" | grep -E "${domain_regex}" | sort | uniq > "./gfwlist_addition.tmp" && cat "./gfwlist2agh_modify.tmp" | grep -v "\#" | grep "\(\!\&\!\)\|\(\@\%\!\)\|\(\!\&\@\)\|\(\!\!\!\)" | tr -d "\!\%\&\(\)\*\@" | grep -E "${domain_regex}" | sort | uniq > "./gfwlist_subtraction.tmp" && cat "./gfwlist2agh_modify.tmp" | grep -v "\#" | grep "\(\*\&\*\)\|\(\*\*\*\)" | tr -d "\!\%\&\(\)\*\@" | grep -E "${domain_regex}" | xargs | sed "s/\ /\|/g" | sort | uniq > "./gfwlist_exclusion.tmp" && cat "./gfwlist2agh_modify.tmp" | grep -v "\#" | grep "\(\*\&\*\)\|\(\*\*\*\)" | tr -d "\!\%\&\(\)\*\@" | grep -E "${lite_domain_regex}" | xargs | sed "s/\ /\|/g" | sort | uniq > "./lite_gfwlist_exclusion.tmp" && cat "./gfwlist2agh_modify.tmp" | grep -v "\#" | grep "\(\!\&\*\)\|\(\!\*\*\)" | tr -d "\!\%\&\(\)\*\@" | grep -E "${domain_regex}" | xargs | sed "s/\ /\|/g" | sort | uniq > "./gfwlist_keyword.tmp" && cat "./gfwlist2agh_modify.tmp" | grep -v "\#" | grep "\(\!\&\*\)\|\(\!\*\*\)" | tr -d "\!\%\&\(\)\*\@" | grep -E "${lite_domain_regex}" | xargs | sed "s/\ /\|/g" | sort | uniq > "./lite_gfwlist_keyword.tmp" && cat "./cnacc_addition.tmp" | grep -E "${lite_domain_regex}" | sort | uniq > "./lite_cnacc_addition.tmp" && cat "./gfwlist_addition.tmp" | grep -E "${lite_domain_regex}" | sort | uniq > "./lite_gfwlist_addition.tmp" && cat "./cnacc_trusted.tmp" | sed "s/\/114\.114\.114\.114//g;s/server\=\///g" | tr "A-Z" "a-z" | grep -E "${domain_regex}" | sort | uniq > "./cnacc_trust.tmp" && cat "./cnacc_trust.tmp" | grep -E "${lite_domain_regex}" | sort | uniq > "./lite_cnacc_trust.tmp" && cat "./cnacc_domain.tmp" | sed "s/domain\://g;s/full\://g" | tr "A-Z" "a-z" | grep -E "${domain_regex}" | sort | uniq > "./cnacc_checklist.tmp" && cat "./gfwlist_base64.tmp" "./gfwlist_domain.tmp" | sed "s/domain\://g;s/full\://g;s/http\:\/\///g;s/https\:\/\///g" | tr -d "|" | tr "A-Z" "a-z" | grep -E "${domain_regex}" | sort | uniq > "./gfwlist_checklist.tmp" && cat "./cnacc_checklist.tmp" | rev | cut -d "." -f 1,2 | rev | sort | uniq > "./lite_cnacc_checklist.tmp" && cat "./gfwlist_checklist.tmp" | rev | cut -d "." -f 1,2 | rev | sort | uniq > "./lite_gfwlist_checklist.tmp" && awk 'NR == FNR { tmp[$0] = 1 } NR > FNR { if ( tmp[$0] != 1 ) print }' "./cnacc_checklist.tmp" "./gfwlist_checklist.tmp" > "./gfwlist_raw.tmp" && awk 'NR == FNR { tmp[$0] = 1 } NR > FNR { if ( tmp[$0] != 1 ) print }' "./gfwlist_checklist.tmp" "./cnacc_checklist.tmp" | grep -Ev "(\.($(cat './cnacc_exclusion.tmp'))$)|(^$(cat './cnacc_exclusion.tmp')$)|($(cat './cnacc_keyword.tmp'))" > "./cnacc_raw.tmp" && awk 'NR == FNR { tmp[$0] = 1 } NR > FNR { if ( tmp[$0] != 1 ) print }' "./lite_cnacc_checklist.tmp" "./lite_gfwlist_checklist.tmp" > "./lite_gfwlist_raw.tmp" && awk 'NR == FNR { tmp[$0] = 1 } NR > FNR { if ( tmp[$0] != 1 ) print }' "./lite_gfwlist_checklist.tmp" "./lite_cnacc_checklist.tmp" | grep -Ev "(\.($(cat './lite_cnacc_exclusion.tmp'))$)|(^$(cat './lite_cnacc_exclusion.tmp')$)|($(cat './lite_cnacc_keyword.tmp'))" > "./lite_cnacc_raw.tmp" && awk 'NR == FNR { tmp[$0] = 1 } NR > FNR { if ( tmp[$0] != 1 ) print }' "./cnacc_trust.tmp" "./gfwlist_raw.tmp" | grep -Ev "(\.($(cat './gfwlist_exclusion.tmp'))$)|(^$(cat './gfwlist_exclusion.tmp')$)|($(cat './gfwlist_keyword.tmp'))" > "./gfwlist_raw_new.tmp" && awk 'NR == FNR { tmp[$0] = 1 } NR > FNR { if ( tmp[$0] != 1 ) print }' "./cnacc_trust.tmp" "./lite_gfwlist_raw.tmp" | grep -Ev "(\.($(cat './lite_gfwlist_exclusion.tmp'))$)|(^$(cat './lite_gfwlist_exclusion.tmp')$)|($(cat './lite_gfwlist_keyword.tmp'))" > "./lite_gfwlist_raw_new.tmp" && cat "./cnacc_raw.tmp" "./lite_cnacc_raw.tmp" "./cnacc_addition.tmp" "./lite_cnacc_addition.tmp" "./cnacc_trust.tmp" "./lite_cnacc_trust.tmp" | sort | uniq > "./cnacc_added.tmp" && cat "./gfwlist_raw_new.tmp" "./lite_gfwlist_raw_new.tmp" "./gfwlist_addition.tmp" "./lite_gfwlist_addition.tmp" | sort | uniq > "./gfwlist_added.tmp" && cat "./lite_cnacc_raw.tmp" "./lite_cnacc_addition.tmp" "./lite_cnacc_trust.tmp" | sort | uniq > "./lite_cnacc_added.tmp" && cat "./lite_gfwlist_raw_new.tmp" "./lite_gfwlist_addition.tmp" | sort | uniq > "./lite_gfwlist_added.tmp" && awk 'NR == FNR { tmp[$0] = 1 } NR > FNR { if ( tmp[$0] != 1 ) print }' "./cnacc_subtraction.tmp" "./cnacc_added.tmp" > "./cnacc_data.tmp" && awk 'NR == FNR { tmp[$0] = 1 } NR > FNR { if ( tmp[$0] != 1 ) print }' "./gfwlist_subtraction.tmp" "./gfwlist_added.tmp" > "./gfwlist_data.tmp" && awk 'NR == FNR { tmp[$0] = 1 } NR > FNR { if ( tmp[$0] != 1 ) print }' "./cnacc_subtraction.tmp" "./lite_cnacc_added.tmp" > "./lite_cnacc_data.tmp" && awk 'NR == FNR { tmp[$0] = 1 } NR > FNR { if ( tmp[$0] != 1 ) print }' "./gfwlist_subtraction.tmp" "./lite_gfwlist_added.tmp" > "./lite_gfwlist_data.tmp" && cat "./cnacc_data.tmp" "./lite_cnacc_data.tmp" | sort | uniq | awk "{ print $2 }"))
    gfwlist_data=($(cat "./gfwlist_data.tmp" "./lite_gfwlist_data.tmp" | sort | uniq | awk "{ print $2 }"))
    lite_cnacc_data=($(cat "./lite_cnacc_data.tmp" | sort | uniq | awk "{ print $2 }"))
    lite_gfwlist_data=($(cat "./lite_gfwlist_data.tmp" | sort | uniq | awk "{ print $2 }"))
}
# Generate Rules
function GenerateRules() {
    function FileName() {
        if [ "${generate_file}" == "black" ] || [ "${generate_file}" == "whiteblack" ]; then
            generate_temp="black"
        elif [ "${generate_file}" == "white" ] || [ "${generate_file}" == "blackwhite" ]; then
            generate_temp="white"
        else
            generate_temp="debug"
        fi
        if [ "${software_name}" == "adguardhome" ] || [ "${software_name}" == "domain" ]; then
            file_extension="txt"
        elif [ "${software_name}" == "bind9" ] || [ "${software_name}" == "dnsmasq" ] || [ "${software_name}" == "smartdns" ] || [ "${software_name}" == "smartdns-domain-rules" ] || [ "${software_name}" == "unbound" ]; then
            file_extension="conf"
        else
            file_extension="dev"
        fi
        if [ ! -d "../dns-${software_name}" ]; then
            mkdir "../dns-${software_name}"
        fi
        file_name="${generate_temp}list_${generate_mode}.${file_extension}"
        file_path="../dns-${software_name}/${file_name}"
    }
    function GenerateDefaultUpstream() {
        case ${software_name} in
            adguardhome)
                if [ "${generate_mode}" == "full_split" ] || [ "${generate_mode}" == "lite_split" ]; then
                    if [ "${generate_file}" == "blackwhite" ]; then
                        for foreign_dns_task in "${!foreign_dns[@]}"; do
                            echo "${foreign_dns[$foreign_dns_task]}" >> "${file_path}"
                        done
                    elif [ "${generate_file}" == "whiteblack" ]; then
                        for domestic_dns_task in "${!domestic_dns[@]}"; do
                            echo "${domestic_dns[$domestic_dns_task]}" >> "${file_path}"
                        done
                    fi
                else
                    if [ "${generate_file}" == "black" ]; then
                        for domestic_dns_task in "${!domestic_dns[@]}"; do
                            echo "${domestic_dns[$domestic_dns_task]}" >> "${file_path}"
                        done
                    elif [ "${generate_file}" == "white" ]; then
                        for foreign_dns_task in "${!foreign_dns[@]}"; do
                            echo "${foreign_dns[$foreign_dns_task]}" >> "${file_path}"
                        done
                    fi
                fi
            ;;
            *)
                exit 1
            ;;
        esac
    }
        case ${software_name} in
        adguardhome)
            domestic_dns=(
                "https://doh.360.cn/dns-query"
                "https://dns.alidns.com/dns-query"
                "https://doh.pub/dns-query"
		"https://sm2.doh.pub/dns-query"
		"https://1.12.12.12/dns-query"
		"https://120.53.53.53/dns-query"
		"https://223.5.5.5/dns-query"
		"https://223.6.6.6/dns-query"
		"tls://223.5.5.5"
		"tls://223.6.6.6"
		"tls://dns.alidns.com"
		"tls://dot.360.cn"
		"tls://dns.pub"
		"tls://1.12.12.12"
		"tls://120.53.53.53"
            )
            foreign_dns=(
                "https://doh.opendns.com/dns-query"
                "https://dns.google/dns-query"
                "https://1dot1dot1dot1.cloudflare-dns.com/dns-query"
                "https://dns11.quad9.net/dns-query"
	            "https://dns.nextdns.io/dns-query"
                "https://mozilla.cloudfare-dns.com/dns-query"
                "https://chrome.cloudflare-dns.com/dns-query"
                "https://e5aehtlc5e.cloudflare-gateway.com/dns-query"
                "https://sepfvn6g5a.cloudflare-gateway.com/dns-query"
	            "https://dns-unfiltered.adguard.com/dns-query"
	            "https://doh.dns.sb/dns-query"
	            "https://odoh.cloudflare-dns.com/dns-query"
                "https://dns.twnic.tw/dns-query"
                "https://public.dns.iij.jp/dns-query"
                "https://dns.digitale-gesellschaft.ch/dns-query"
                "https://dns.aa.net.uk/dns-query"
                "quic://dns-unfiltered.adguard.com"
                "quic://dns.nextdns.io"
            )
            function GenerateRulesHeader() {
                echo -n "[/" >>"${file_path}"
            }
            function GenerateRulesBody() {
                if [ "${generate_mode}" == "full" ] || [ "${generate_mode}" == "full_split" ]; then
                    if [ "${generate_file}" == "black" ] || [ "${generate_file}" == "blackwhite" ]; then
                        for cnacc_data_task in "${!cnacc_data[@]}"; do
                            echo -n "${cnacc_data[$cnacc_data_task]}/" >>"${file_path}"
                        done
                    elif [ "${generate_file}" == "white" ] || [ "${generate_file}" == "whiteblack" ]; then
                        for gfwlist_data_task in "${!gfwlist_data[@]}"; do
                            echo -n "${gfwlist_data[$gfwlist_data_task]}/" >>"${file_path}"
                        done
                    fi
                fi
            }
            function GenerateRulesFooter() {
                if [ "${dns_mode}" == "default" ]; then
                    echo -e "]#" >>"${file_path}"
                elif [ "${dns_mode}" == "domestic" ]; then
                    echo -e "]${domestic_dns[domestic_dns_task]}" >>"${file_path}"
                elif [ "${dns_mode}" == "foreign" ]; then
                    echo -e "]${foreign_dns[foreign_dns_task]}" >>"${file_path}"
                fi
            }
            function GenerateRulesProcess() {
                GenerateRulesHeader
                GenerateRulesBody
                GenerateRulesFooter
            }
            if [ "${dns_mode}" == "default" ]; then
                FileName && GenerateDefaultUpstream && GenerateRulesProcess
            elif [ "${dns_mode}" == "domestic" ]; then
                FileName && GenerateDefaultUpstream && for domestic_dns_task in "${!domestic_dns[@]}"; do
                    GenerateRulesProcess
                done
            elif [ "${dns_mode}" == "foreign" ]; then
                FileName && GenerateDefaultUpstream && for foreign_dns_task in "${!foreign_dns[@]}"; do
                    GenerateRulesProcess
                done
            fi
            ;;
        bind9)
            domestic_dns=(
                "119.29.29.29 port 53"
                "223.5.5.5 port 53"
                "223.6.6.6 port 53"
                "101.226.4.6 port 53"
                "123.125.81.6 port 53"
                "114.114.114.114 port 53"
                "114.114.115.115 port 53"
                "117.50.11.11 port 53"
                "52.80.66.66 port 53"
            )
            foreign_dns=(
                "208.67.222.222 port 53"
                "8.8.4.4 port 53"
                "8.8.8.8 port 53"
                "1.1.1.1 port 53"
                "1.0.0.1 port 53"
                "9.9.9.10 port 53"
                "94.140.14.140 port 53"
                "94.140.14.141 port 53"
                "74.82.42.42 prot 53"
                "185.222.222.222 prot 53"
            )
            if [ "${generate_mode}" == "full" ]; then
                if [ "${generate_file}" == "black" ]; then
                    FileName && for gfwlist_data_task in "${!gfwlist_data[@]}"; do
                        echo -n "zone \"${gfwlist_data[$gfwlist_data_task]}.\" {type forward; forwarders { " >>"${file_path}"
                        for foreign_dns_task in "${!foreign_dns[@]}"; do
                            echo -n "${foreign_dns[$foreign_dns_task]}; " >>"${file_path}"
                        done
                        echo "}; };" >>"${file_path}"
                    done
                elif [ "${generate_file}" == "white" ]; then
                    FileName && for cnacc_data_task in "${!cnacc_data[@]}"; do
                        echo -n "zone \"${cnacc_data[$cnacc_data_task]}.\" {type forward; forwarders { " >>"${file_path}"
                        for domestic_dns_task in "${!domestic_dns[@]}"; do
                            echo -n "${domestic_dns[$domestic_dns_task]}; " >>"${file_path}"
                        done
                        echo "}; };" >>"${file_path}"
                    done
                fi
            fi
            ;;
        dnsmasq)
            domestic_dns=(
                "119.29.29.29#53"
                "223.5.5.5#53"
                "223.6.6.6#53"
                "101.226.4.6#53"
                "123.125.81.6#53"
                "114.114.114.114#53"
                "114.114.115.115#53"
                "117.50.11.11#53"
                "52.80.66.66#53"
            )
            foreign_dns=(
                "208.67.222.222#53"
                "8.8.4.4#53"
                "8.8.8.8#53"
                "1.1.1.1#53"
                "1.0.0.1#53"
                "9.9.9.10#53"
                "94.140.14.140#53"
                "94.140.14.141#53"
                "74.82.42.42#53"
                "185.222.222.222#53"
            )
            if [ "${generate_mode}" == "full" ]; then
                if [ "${generate_file}" == "black" ]; then
                    FileName && for gfwlist_data_task in "${!gfwlist_data[@]}"; do
                        for foreign_dns_task in "${!foreign_dns[@]}"; do
                            echo "server=/${gfwlist_data[$gfwlist_data_task]}/${foreign_dns[$foreign_dns_task]}" >>"${file_path}"
                        done
                    done
                elif [ "${generate_file}" == "white" ]; then
                    FileName && for cnacc_data_task in "${!cnacc_data[@]}"; do
                        for domestic_dns_task in "${!domestic_dns[@]}"; do
                            echo "server=/${cnacc_data[$cnacc_data_task]}/${domestic_dns[$domestic_dns_task]}" >>"${file_path}"
                        done
                    done
                fi
            fi
            ;;
        domain)
            if [ "${generate_mode}" == "full" ]; then
                if [ "${generate_file}" == "black" ]; then
                    FileName && for gfwlist_data_task in "${!gfwlist_data[@]}"; do
                        echo "${gfwlist_data[$gfwlist_data_task]}" >> "${file_path}"
                    done
                elif [ "${generate_file}" == "white" ]; then
                    FileName && for cnacc_data_task in "${!cnacc_data[@]}"; do
                        echo "${cnacc_data[$cnacc_data_task]}" >> "${file_path}"
                    done
                fi
            elif [ "${generate_mode}" == "lite" ]; then
                if [ "${generate_file}" == "black" ]; then
                    FileName && for lite_gfwlist_data_task in "${!lite_gfwlist_data[@]}"; do
                        echo "${lite_gfwlist_data[$lite_gfwlist_data_task]}" >> "${file_path}"
                    done
                elif [ "${generate_file}" == "white" ]; then
                    FileName && for lite_cnacc_data_task in "${!lite_cnacc_data[@]}"; do
                        echo "${lite_cnacc_data[$lite_cnacc_data_task]}" >> "${file_path}"
                    done
                fi
            fi
        ;;
        smartdns)
            if [ "${generate_mode}" == "full" ]; then
                if [ "${generate_file}" == "black" ]; then
                    FileName && for gfwlist_data_task in "${!gfwlist_data[@]}"; do
                        echo "nameserver /${gfwlist_data[$gfwlist_data_task]}/${foreign_group:-foreign}" >>"${file_path}"
                    done
                elif [ "${generate_file}" == "white" ]; then
                    FileName && for cnacc_data_task in "${!cnacc_data[@]}"; do
                        echo "nameserver /${cnacc_data[$cnacc_data_task]}/${domestic_group:-domestic}" >>"${file_path}"
                    done
                fi
            elif [ "${generate_mode}" == "lite" ]; then
                if [ "${generate_file}" == "black" ]; then
                    FileName && for lite_gfwlist_data_task in "${!lite_gfwlist_data[@]}"; do
                        echo "nameserver /${lite_gfwlist_data[$lite_gfwlist_data_task]}/${foreign_group:-foreign}" >>"${file_path}"
                    done
                elif [ "${generate_file}" == "white" ]; then
                    FileName && for lite_cnacc_data_task in "${!lite_cnacc_data[@]}"; do
                        echo "nameserver /${lite_cnacc_data[$lite_cnacc_data_task]}/${domestic_group:-domestic}" >>"${file_path}"
                    done
                fi
            fi
            ;;
        smartdns-domain-rules)
            if [ "${generate_mode}" == "full" ]; then
                if [ "${generate_file}" == "black" ]; then
                    FileName && for gfwlist_data_task in "${!gfwlist_data[@]}"; do
                        echo "domain-rules -speed-check-mode ping,tcp:80 -nameserver /${gfwlist_data[$gfwlist_data_task]}/${foreign_group:-foreign}" >>"${file_path}"
                    done
                elif [ "${generate_file}" == "white" ]; then
                    FileName && for cnacc_data_task in "${!cnacc_data[@]}"; do
                        echo "domain-rules -speed-check-mode ping,tcp:80 -nameserver /${cnacc_data[$cnacc_data_task]}/${domestic_group:-domestic}" >>"${file_path}"
                    done
                fi
            elif [ "${generate_mode}" == "lite" ]; then
                if [ "${generate_file}" == "black" ]; then
                    FileName && for lite_gfwlist_data_task in "${!lite_gfwlist_data[@]}"; do
                        echo "domain-rules -speed-check-mode ping,tcp:80 -nameserver /${lite_gfwlist_data[$lite_gfwlist_data_task]}/${foreign_group:-foreign}" >>"${file_path}"
                    done
                elif [ "${generate_file}" == "white" ]; then
                    FileName && for lite_cnacc_data_task in "${!lite_cnacc_data[@]}"; do
                        echo "domain-rules -speed-check-mode ping,tcp:80 -nameserver /${lite_cnacc_data[$lite_cnacc_data_task]}/${domestic_group:-domestic}" >>"${file_path}"
                    done
                fi
            fi
            ;;

        unbound)
            domestic_dns=(
                "223.5.5.5@853"
                "223.6.6.6@853"
                "119.29.29.29@53"
                "101.226.4.6@53"
                "123.125.81.6@53"
                "114.114.114.114@53"
                "114.114.115.115@53"
                "117.50.11.11#@53"
                "52.80.66.66@53"
            )
            foreign_dns=(
                "8.8.4.4@853e"
                "8.8.8.8@853"
                "1.1.1.1@853"
                "1.0.0.1@853"
                "9.9.9.10@853"
                "149.112.112.11@853"
                "94.140.14.140@853"
                "94.140.14.141@853"
                "74.82.42.42@853"
                "185.222.222.222@853"
            )
            forward_ssl_tls_upstream="yes"
            function GenerateRulesHeader() {
                echo "forward-zone:" >>"${file_path}"
            }
            function GenerateRulesFooter() {
                if [ "${dns_mode}" == "domestic" ]; then
                    for domestic_dns_task in "${!domestic_dns[@]}"; do
                        echo "    forward-addr: \"${domestic_dns[$domestic_dns_task]}\"" >>"${file_path}"
                    done
                elif [ "${dns_mode}" == "foreign" ]; then
                    for foreign_dns_task in "${!foreign_dns[@]}"; do
                        echo "    forward-addr: \"${foreign_dns[$foreign_dns_task]}\"" >>"${file_path}"
                    done
                fi
                echo "    forward-first: \"yes\"" >>"${file_path}"
                echo "    forward-no-cache: \"yes\"" >>"${file_path}"
                echo "    forward-ssl-upstream: \"${forward_ssl_tls_upstream}\"" >>"${file_path}"
                echo "    forward-tls-upstream: \"${forward_ssl_tls_upstream}\"" >>"${file_path}"
            }
            if [ "${generate_mode}" == "full" ]; then
                if [ "${generate_file}" == "black" ]; then
                    FileName && for gfwlist_data_task in "${!gfwlist_data[@]}"; do
                        GenerateRulesHeader && echo "    name: \"${gfwlist_data[$gfwlist_data_task]}.\"" >>"${file_path}" && GenerateRulesFooter
                    done
                elif [ "${generate_file}" == "white" ]; then
                    FileName && for cnacc_data_task in "${!cnacc_data[@]}"; do
                        GenerateRulesHeader && echo "    name: \"${cnacc_data[$cnacc_data_task]}.\"" >>"${file_path}" && GenerateRulesFooter
                    done
                fi
            fi
            ;;
        *)
            exit 1
            ;;
        esac
    }
    # Output Data
    function OutputData() {
        ## AdGuard Home
        echo -e "AdGuard Home"
        software_name="adguardhome" && generate_file="black" && generate_mode="full" && dns_mode="default" && GenerateRules
        software_name="adguardhome" && generate_file="white" && generate_mode="full" && dns_mode="default" && GenerateRules
        software_name="adguardhome" && generate_file="blackwhite" && generate_mode="full" && dns_mode="domestic" && GenerateRules
        software_name="adguardhome" && generate_file="whiteblack" && generate_mode="full" && dns_mode="foreign" && GenerateRules
        software_name="adguardhome" && generate_file="blackwhite" && generate_mode="full_split" && dns_mode="domestic" && GenerateRules
        software_name="adguardhome" && generate_file="whiteblack" && generate_mode="full_split" && dns_mode="foreign" && GenerateRules
        ## Bind9
        echo -e "Bind9"
        software_name="bind9" && generate_file="black" && generate_mode="full" && GenerateRules
        software_name="bind9" && generate_file="white" && generate_mode="full" && GenerateRules
        ## DNSMasq
        echo -e "DNSMasq"
        software_name="dnsmasq" && generate_file="black" && generate_mode="full" && GenerateRules
        software_name="dnsmasq" && generate_file="white" && generate_mode="full" && GenerateRules
        ## Domain
        software_name="domain" && generate_file="black" && generate_mode="full" && GenerateRules
        software_name="domain" && generate_file="black" && generate_mode="lite" && GenerateRules
        software_name="domain" && generate_file="white" && generate_mode="full" && GenerateRules
        software_name="domain" && generate_file="white" && generate_mode="lite" && GenerateRules
        ## SmartDNS
        echo -e "SmartDNS"
        software_name="smartdns" && generate_file="black" && generate_mode="full" && foreign_group="foreign" && GenerateRules
        software_name="smartdns" && generate_file="black" && generate_mode="lite" && foreign_group="foreign" && GenerateRules
        software_name="smartdns" && generate_file="white" && generate_mode="full" && domestic_group="domestic" && GenerateRules
        software_name="smartdns" && generate_file="white" && generate_mode="lite" && domestic_group="domestic" && GenerateRules
        ## SmartDNS
        echo -e "Smartdns-domain-rules"
        software_name="smartdns-domain-rules" && generate_file="black" && generate_mode="full" && foreign_group="foreign" && GenerateRules
        software_name="smartdns-domain-rules" && generate_file="black" && generate_mode="lite" && foreign_group="foreign" && GenerateRules
        software_name="smartdns-domain-rules" && generate_file="white" && generate_mode="full" && domestic_group="domestic" && GenerateRules
        software_name="smartdns-domain-rules" && generate_file="white" && generate_mode="lite" && domestic_group="domestic" && GenerateRules
        ## Unbound
        echo -e "Unbound"
        software_name="unbound" && generate_file="black" && generate_mode="full" && dns_mode="foreign" && GenerateRules
        software_name="unbound" && generate_file="white" && generate_mode="full" && dns_mode="domestic" && GenerateRules
    }
    ## Process
    # Call GetData
    GetData
    # Call AnalyseData
    AnalyseData
    # Call OutputData
    OutputData
