function ip2long(ip) {split(ip,a,".");return a[4]+256*a[3]+65536*a[2]+16777216*a[1]}
function ipfromfull(fullip) {split (fullip,a,"/"); return a[1]}
function maskfromfull(fullip) {split (fullip,a,"/"); if(a[2]=="") a[2]=32; return a[2]}
function firstiplong(fullip){n=ip2long(fullip);m=maskfromfull(fullip);return and(n,0x100000000-2^(32-m))}
function lastiplong(fullip){n=ip2long(fullip);m=maskfromfull(fullip);return or(n,2^(32-m)-1)}
function long2ip(num) {return rshift(and(num,0xff000000),24) "." rshift(and(num,0xff0000),16) "." rshift(and(num,0xff00),8) "." and(num,0xff)}
function firstip(fullip){return long2ip(firstiplong(fullip))}
function lastip(fullip){return long2ip(lastiplong(fullip))}
function getsubnet(fullip){return firstip(fullip) "/" maskfromfull(fullip)}
function ip2full(fullip) {return ipfromfull(fullip) "/" maskfromfull(fullip)}
function entryip(fullip1,fullip2) {
  m1=maskfromfull(fullip1)
  m2=maskfromfull(fullip2)
  if (m1 < m2){m=m1;e="<"}
  else if( m1 > m2){m=m2;e=">"}
  else {m=m2;e="="}
  if ( rshift(ip2long(fullip1),(32-m))!=rshift(ip2long(fullip2),(32-m))){e="!"}
  return e
}

