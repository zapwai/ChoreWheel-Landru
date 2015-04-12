#!/usr/bin/perl -w
use strict;

use Mail::Sender;
my $ChoresFolder=".";
    my $sender = new Mail::Sender {
            auth => 'PLAIN',
            authid => 'username@gmail.com', # Enter the email address you will send from.
            authpwd => 'password',     # Enter the password for that email address.
            smtp => 'smtp.gmail.com',
            port => 587, # Check the port with your email server.
            from => 'username@gmail.com',
            to => 'receiver1@gmail.com, receiver2@gmail.com', # Enter one or more email addresses to receive mail from Landru
            subject => '... CHORES ...',
            msg => "".`cat $ChoresFolder/Landru_Commands.txt`, 
            #file => './Landru_Commands.txt',
            #debug => "/home/image/Documents/SendMailDebug.txt",
            #debug_level => 4,
            #timeout => 500,
    };
    #my $result =  $sender->MailFile({
    my $result =  $sender->MailMsg({
            msg => $sender->{msg},
            #file => $sender->{file},
    });
    
    print "$sender->{error_msg}\n>>> End.\n";
    
1;

# Doesn't like no msg!
# (Even if you're attaching a file.)
