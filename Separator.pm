
package Tk::Separator;

use strict;
use vars qw($VERSION);
use Carp;
use Tk;
use base qw(Tk::Derived Tk::Frame);

$VERSION = '0.50';

Construct Tk::Widget 'Separator';

sub Populate
{
	my ($widget, $args) = @_;

	$widget->{'-orient'} = delete $args->{'-orient'} || 'horizontal';
	$widget->{'-backgrounddark'}  =
		delete $args->{'-backgrounddark'} || 'SystemDisabledText';
	$widget->{'-backgroundlight'} =
		delete $args->{'-backgroundlight'} || 'SystemButtonHighlight';

	$widget->SUPER::Populate($args);



	# frame used to pad the two colored lines that make the separator:
	my $frame = $widget->Frame();

	if ($widget->{'-orient'} =~ /^horizontal$/i)
	{
		# pad the top and bottom parts of the bar:
		$frame->pack(-fill => 'both', -expand => 1, -pady => 3);

		# add the horizontal bar:
		$frame->Frame(
			-background => $widget->{'-backgrounddark'}
		)->pack(-side => 'top', -fill => 'x');

		$frame->Frame(
			-background => $widget->{'-backgroundlight'}
		)->pack(-side => 'top', -fill => 'x');
	}
	elsif ($widget->{'-orient'} =~ /^vertical$/i)
	{
		# pad the left and right parts of the bar:
		$frame->pack(-fill => 'both', -expand => 1, -padx => 3);

		# add the vertical bar:
		$frame->Frame(
			-background => $widget->{'-backgrounddark'}
		)->pack(-side => 'left', -fill => 'y');

		$frame->Frame(
			-background => $widget->{'-backgroundlight'}
		)->pack(-side => 'left', -fill => 'y');
	}
}

1;
