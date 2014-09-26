#!/usr/bin/perl
$|=1;
$count = 0;
$pid = $$;


while (<>) {

        #pick random element
        opendir DIR, "/home/guy/Downloads/steaks" or die "cannot open dir $dir: $!";
        my @arr= readdir DIR;
        closedir DIR;
        my $hash = { mykey => \@arr };

        my $randomelement = $hash->{mykey}[ rand(@{ $hash->{mykey} }) ];

        chomp $_;
        if ($_ =~ /(.*\.jpg)/i) {
                $url = $1;
                #system("/usr/bin/wget", "-q", "-O","/var/www/images_list/$pid-$count.jpg", "$url");
                #system("/usr/bin/mogrify", "-flip","/var/www/images_list/$pid-$count.jpg");
                print "http://127.0.0.1/images_list/$randomelement\n";
        }
        elsif ($_ =~ /(.*\.gif)/i) {
                $url = $1;
                print "http://127.0.0.1/images_list/$randomelement\n";

        }
        elsif ($_ =~ /(.*\.png)/i) {
                $url = $1;
                #system("/usr/bin/wget", "-q", "-O","/var/www/images/$randomelement.jpeg", "$url");
                #system("/usr/bin/mogrify", "-flip","/var/www/images/$randomelement.jpeg");
                print "http://127.0.0.1/images_list/$randomelement\n";

        }
        elsif ($_ =~ /(.*\.jpeg)/i) {
                $url = $1;
                #system("/usr/bin/wget", "-q", "-O","/var/www/images/$randomelement.jpeg", "$url");
                #system("/usr/bin/mogrify", "-flip","/var/www/images/$randomelement.jpeg");
                print "http://127.0.0.1/images_list/$randomelement.jpeg\n";
        }
        else {
                print "$_\n";;
        }
        $count++;
}
