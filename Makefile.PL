#!/usr/bin/perl
# $Id: Makefile.PL,v 1.2 2001/03/05 16:25:52 fletch Exp $

use ExtUtils::MakeMaker;

WriteMakefile
  ( NAME         => 'POE::Component::Pcap',
    AUTHOR       => 'Mike Fletcher <fletch+poe@phydeaux.org>',
    ABSTRACT     => 'POE component for non-blocking use of Net::Pcap.',
    VERSION_FROM => 'Pcap.pm',

    PM           => { 'Pcap.pm' => '$(INST_LIBDIR)/Pcap.pm' },
    PREREQ_PM    => { POE      => 0.12,
                      Net::Pcap => 0.04,
		      NetPacket::Ethernet => 0.01,
                    },
    dist         => { COMPRESS => 'gzip -9f',
                      SUFFIX   => 'gz',
                    },
  );
