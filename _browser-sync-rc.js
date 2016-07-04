module.exports = {
    debugInfo: true,
    files: [
        '_site/*.css',
        '_site/**/*.html'
    ],
    ghostMode: {
        forms: true,
        links: true,
        scroll: true
    },
    server: {
        baseDir: '_site'
    }
};