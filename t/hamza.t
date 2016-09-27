use Test::More;
use utf8;

BEGIN {
    use_ok 'Encode::Arabic::Franco';
}

my %samples = (
    #'2alef'      => 'ألف',
    #'2lef'       => 'ألف',
    #'alef'       => 'ألف',
    #'alf'        => 'ألف',
    #'fg2ah'      => 'فجأة',
    #'ra2s'       => 'رأس',
    #'ts2al'      => 'تسأل',
    #'mokaf2a '   => 'مكافأة',
    #'s2al'       => 'سأل',
    #'nsh2ah'     => 'نشأة',
    #'ma2mn'      => 'مأمن',
    #'tsa2l'      => 'تسائل',
    #'tunshe2een' => 'تنشئين',
    #'s2lat'      => 'سئلت',
    #'2a2emah'    => 'أئمة',
    #'goz2yah'    => 'جزئية',
    #'fe2ah'      => 'فئة',
    #'be2r'       => 'بئر',
    #'bembade2ek' => 'بمبادئك',
    #'2e2tman'    => 'ائتمان',
    #'5a6y2ah'    => 'خطيئة',
    #'m2ah'       => 'مئة',
    #'alsma2'     => 'السماء',
    #'goz2an'     => 'جزءان',
    #'3ba2ah'     => 'عباءة',
    #'mo2men'     => 'مؤمن',
    #'ma2ool'     => 'مؤول',
    #'ro2oos'     => 'رؤوس',
    #'lo2lo2ah'   => 'لؤلؤة',
    #'5a62ohom'   => 'خطؤهم',
    #'tfa2ol'     => 'تفاؤل',
    #'mo2nath'    => 'مؤنث',
    #'lo2y'      => 'لؤي',
    #'lo2ay'      => 'لؤي',
);

while (my ($franco, $arabic) = each %samples) {
    my $translit = decode 'franco-arabic', $franco;
    is $translit, $arabic, "decoding $franco";
}
done_testing;

