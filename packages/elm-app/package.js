Package.describe({
    name: 'elm-app',
    version: '1.0.0',
    summary: 'elm app',
    documentation: 'add your elm app into meteor',
});

Package.onUse(function (api) {
    api.versionsFrom('2.6');
    api.use('modules');
    api.addFiles('dist/style.css', 'client');
    api.mainModule('dist/index.js', 'client');
});
