package Tree;

=head1 NAME

  Tree - module for Employees configuration

=head1 SYNOPSIS

  use Employees;
  my $Employees = Employees->new($db, $admin, \%conf);

=cut

use strict;
use parent 'main';
my ($admin, $CONF);


#*******************************************************************
#  Инициализация обьекта
#*******************************************************************
sub new {
  my $class = shift;
  my $db    = shift;
  ($admin, $CONF) = @_;

  my $self = {};
  bless($self, $class);

  $self->{db} = $db;
  $self->{admin} = $admin;
  $self->{conf} = $CONF;

  return $self;
}

#*******************************************************************
=head2 function add_type() - add tree type

  Arguments:
    %$attr
      TYPE_OF_TREE - type of tree

  Returns:
    $self object

  Examples:
    $Tree->add_type({
      TYPE_OF_TREE => $FORM{TYPE_OF_TREE},
    });

=cut

#*******************************************************************
sub add_type {
  my $self = shift;
  my ($attr) = @_;

  $self->query_add('trees_type', {%$attr});

  return $self;
}

#*******************************************************************

=head2 function del_type() - delete type from db
  Arguments:
    $attr

  Returns:

  Examples:
    $Tree->del_type( {ID => 1} );

=cut

#*******************************************************************
sub del_position {
  my $self = shift;
  my ($attr) = @_;

  $self->query_del('trees_type', $attr);

  return $self;
}


#**********************************************************

=head2 function type_list() - get articles list

  Arguments:
    $attr
      SUBORDINATION -
  Returns:
    @list

  Examples:
    my $list = $Employees->position_list({COLS_NAME=>1});

=cut

#**********************************************************
sub type_list {
  my $self = shift;
  my ($attr) = @_;

  my @WHERE_RULES = ();
  my $SORT        = ($attr->{SORT}) ? $attr->{SORT} : 1;
  my $DESC        = ($attr->{DESC}) ? $attr->{DESC} : '';

  $self->query2(
  "SELECT id, type_of_tree FROM trees_type",
  undef, $attr
  );

  return $self->{list};
}

#**********************************************************
sub update_list {
  my $self = shift;
  my ($attr) = @_;

  my @WHERE_RULES = ();
  my $SORT        = ($attr->{SORT}) ? $attr->{SORT} : 1;
  my $DESC        = ($attr->{DESC}) ? $attr->{DESC} : '';

  $self->query2(
  "UPDATE user SET name, deposit, registration, nicname, status, arrears",
  undef, $attr
  );

  return $self->{list};
}


#**********************************************************
=head2 function position_info() - get position info

  Arguments:
    $attr
      ID - position identifier
  Returns:
    $self object

  Examples:
    my $list = $Employees->position_info({ ID => 1 });

=cut
#**********************************************************
sub position_info {
	my $self = shift;
  my ($attr) = @_;

  if ($attr->{id}) {
    $self->query2(
      "SELECT * FROM user
      WHERE id = ?;", undef, { id => 1, Bind => [ $attr->{id} ] }
    );
  }

  return $self;
}

#**********************************************************
=head2 function position_change() - get articles list

  Arguments:
    $attr
      ID            - position identifier;
      POSITION      - position name;
      SUBORDINATION - id of highier position;

  Returns:
    $self object

  Examples:
    my $list = $Employees->position_change({ ID       => 2,
                                             POSITION => "Admin",
                                             SUBORDINATION => 1 });

=cut
#**********************************************************
sub position_change {
	my $self = shift;
  my ($attr) = @_;

  $self->changes2(
    {
      CHANGE_PARAM => 'ID',
      TABLE        => 'user',
      DATA         => $attr
    }
  );

  return $self;
}

1;
