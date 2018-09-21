project('wingpanel-indicator-ayatana', 'vala', 'c')

indicator_name = 'ayatana'

i18n = import('i18n')
gettext_name = indicator_name + '-indicator'

add_global_arguments('-DGETTEXT_PACKAGE="@0@"'.format(gettext_name),
                     language: 'c')
add_project_arguments(['--vapidir', join_paths(meson.current_source_dir(), 'vapi')],
                      language: 'vala')

wingpanel_dep = dependency('wingpanel-2.0')
indicator_dir = wingpanel_dep.get_pkgconfig_variable('indicatorsdir')

conf_data = configuration_data()
conf_data.set_quoted('AYANATAINDICATORDIR', join_paths(get_option('prefix'), indicator_dir))
conf_data.set_quoted('DATADIR', join_paths(get_option('prefix'), get_option('datadir')))
conf_data.set_quoted('GETTEXT_PACKAGE', gettext_name)
conf_data.set_quoted('INDICATORNAME', indicator_name)
conf_data.set_quoted('PKGDATADIR', join_paths(get_option('prefix'), get_option('datadir')))

config_header = configure_file(
    input: 'src/config.vala.in',
    output: 'config.vala',
    configuration: conf_data
)

shared_module(
    indicator_name,
    'src/AyatanaIndicator.vala',
    'src/Indicator.vala',
    'src/IndicatorButton.vala',
    'src/IndicatorFactory.vala',
    'src/IndicatorIface.vala',
    'src/IndicatorLoader.vala',
    'src/IndicatorObject.vala',
    'src/SubMenuButton.vala',
    config_header,
    dependencies: [
        dependency('granite'),
        dependency('indicator3-0.4'),
        wingpanel_dep
    ],
    install: true,
    install_dir: indicator_dir
)

