 

#!/usr/bin/perl
$|=1;
$count = 0;
$pid = $$;
while (<>) {
        chomp $_;
        if ($_ =~ /(.*\.jpg)/i) {
                $url = $1;
                system("/usr/bin/wget", "-q", "-O","/var/www/images/$pid-$count.jpg", "$url");
                system("/usr/bin/mogrify", "-flip","/var/www/images/$pid-$count.jpg");
                print "http://127.0.0.1/images/$pid-$count.jpg\n";
        }
        elsif ($_ =~ /(.*\.gif)/i) {
                $url = $1;
                system("/usr/bin/wget", "-q", "-O","/var/www/images/$pid-$count.gif", "$url");
                system("/usr/bin/mogrify", "-flip","/var/www/images/$pid-$count.gif");
                print "http://127.0.0.1/images/$pid-$count.gif\n";

        }
        elsif ($_ =~ /(.*\.png)/i) {
                $url = $1;
                system("/usr/bin/wget", "-q", "-O","/var/www/images/$pid-$count.png", "$url");
                system("/usr/bin/mogrify", "-flip","/var/www/images/$pid-$count.png");
                print "http://127.0.0.1/images/$pid-$count.png\n";

        }
        elsif ($_ =~ /(.*\.jpeg)/i) {
                $url = $1;
                system("/usr/bin/wget", "-q", "-O","/var/www/images/$pid-$count.jpeg", "$url");
                system("/usr/bin/mogrify", "-flip","/var/www/images/$pid-$count.jpeg");
                print "http://127.0.0.1/images/$pid-$count.jpeg\n";
        }
        else {
                print "$_\n";;
        }
        $count++;
}
