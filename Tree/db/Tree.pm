package Tree;

=head1 NAME

  Tree - module for Tree configuration

=head1 SYNOPSIS

  use Tree;
  my $Tree = Tree->new($db, $admin, \%conf);

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
sub del_type{
  my $self = shift;
  my ($attr) = @_;

  $self->query_del('trees_type', $attr);

  return $self;
}


#**********************************************************

=head2 function type_list() - get type list

  Arguments:
    $attr
  Returns:
    @list

  Examples:
    my $list = $Tree->type_list({COLS_NAME=>1});

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
=head2 function type_info() - get type info

  Arguments:
    $attr
      ID - type identifier
  Returns:
    $self object

  Examples:
    my $list = $Tree->type_info({ ID => 1 });
  вона не працює чи я її не розумію

=cut
#**********************************************************
sub type_info {
	my $self = shift;
  my ($attr) = @_;

  if ($attr->{id}) {
    $self->query2(
      "SELECT * FROM trees_type 
      WHERE id = ?;", undef, { id => 1, Bind => [ $attr->{id} ] }
    );
  }

  return $self;
}

#**********************************************************
=head2 function type_change() - change type

  Arguments:
    $attr
      ID            - type identifier;
      TYPE_OF_TREE  - type of tree;

  Returns:
    $self object

  Examples:
    $Tree->type_change({ ID           => 2,
                         TYPE_OF_TREE => "Вічнозелені",});

=cut
#**********************************************************
sub type_change {
	my $self = shift;
  my ($attr) = @_;

  $self->changes2(
    {
      CHANGE_PARAM => 'ID',
      TABLE        => 'trees_type',
      DATA         => $attr
    }
  );

  return $self;
}

#*******************************************************************
=head2 function add_species() - add tree species

  Arguments:
    %$attr
      TYPE_ID - ID of tree type
      SPECIES - species

  Returns:
    $self object

  Examples:
    $Tree->add_species({
      TYPE_ID => $FORM{TYPE_ID},
      SPECIES => $FORM{SPECIES},
    });

=cut

#*******************************************************************
sub add_species {
  my $self = shift;
  my ($attr) = @_;

  $self->query_add('trees_species', {%$attr});

  return $self;
}

#*******************************************************************

=head2 function del_species() - delete species from db
  Arguments:
    $attr

  Returns:

  Examples:
    $Tree->del_species( {ID => 1} );

=cut

#*******************************************************************
sub del_species {
  my $self = shift;
  my ($attr) = @_;

  $self->query_del('trees_species', $attr);

  return $self;
}


#**********************************************************

=head2 function species_list() - get species list

  Arguments:
    $attr
  Returns:
    @list

  Examples:
    my $list = $Tree->species_list({COLS_NAME=>1});

=cut

#**********************************************************
sub species_list {
  my $self = shift;
  my ($attr) = @_;

  my @WHERE_RULES = ();
  my $SORT        = ($attr->{SORT}) ? $attr->{SORT} : 1;
  my $DESC        = ($attr->{DESC}) ? $attr->{DESC} : '';

  $self->query2(
  "SELECT trees_species.id, type_of_tree, species FROM trees_species, trees_type WHERE type_id=trees_type.id",
  undef, $attr
  );

  return $self->{list};
}

#**********************************************************
=head2 function species_change() - change species

  Arguments:
    $attr
      ID      - species identifier;
      TYPE_ID - type of tree identifier;
      SPECIES - species;

  Returns:
    $self object

  Examples:
    $Tree->species_change({ ID      => 2,
                            TYPE_ID => 3,
                            SPECIES => "Береза"});

=cut
#**********************************************************
sub species_change {
	my $self = shift;
  my ($attr) = @_;

  $self->changes2(
    {
      CHANGE_PARAM => 'ID',
      TABLE        => 'trees_species',
      DATA         => $attr
    }
  );

  return $self;
}
1;
