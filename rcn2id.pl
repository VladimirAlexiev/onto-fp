#!perl -w

my $rcn = shift;
my $redirect = `curl -sI $rcn`;
$redirect =~ s{.*\nlocation: (.*?)\n.*}{https://cordis.europa.eu$1}gs;
print "$rcn\t$redirect\n";
