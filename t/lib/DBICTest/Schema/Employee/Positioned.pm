package # hide from PAUSE 
    DBICTest::Schema::Employee::Positioned;

use base 'DBIx::Class';

__PACKAGE__->load_components(qw( Positioned PK::Auto Core ));

__PACKAGE__->table('employees_positioned');

__PACKAGE__->add_columns(
    employee_id => {
        data_type => 'integer',
        is_auto_increment => 1
    },
    position => {
        data_type => 'integer',
    },
    name => {
        data_type => 'varchar',
        size      => 100,
        is_nullable => 1,
    },
);

__PACKAGE__->set_primary_key('employee_id');
__PACKAGE__->position_column('position');

__PACKAGE__->mk_classdata('field_name_for', {
    employee_id => 'primary key',
    position    => 'list position',
    name        => 'employee name',
});

1;
