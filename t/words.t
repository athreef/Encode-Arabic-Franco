use Test::More;
use utf8;

BEGIN {
    use_ok 'Encode::Arabic::Franco';
}

my %samples = (
    "alsma" => 'السما',
    "el5r6om" => 'الخرطوم',
    "3'rna6" => 'غرناط',
    #"2esrar" => 'إصرار',
    #"2owla" => 'أولى',
    #"shawrma" => 'شاورمة',
);

while (my ($franco, $arabic) = each %samples) {
    my $translit = decode 'franco-arabic', $franco;
    is $arabic, $translit, "decoding $franco";
}
done_testing;
