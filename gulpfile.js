var gulp = require('gulp');
var less = require('gulp-less');
var concat = require('gulp-concat');
var sourcemaps = require('gulp-sourcemaps');
var watch = require('gulp-watch');
var gulpSequence = require('gulp-sequence');

//PostCSS--> https://postcss.org/
var postcss = require('gulp-postcss');
var uncss = require('postcss-uncss');
var cssnano = require('cssnano');

//paths
var themeURL = 'wp-content/themes/msayegh';
var assetsURL = themeURL + '/assets';


gulp.task('compile', function(){
    return gulp.src(assetsURL + '/less/template.less')
            .pipe(less().on('error', console.error.bind(console)))
            .pipe(gulp.dest(assetsURL + '/css/'));
});


gulp.task('concat-vendor-1', function(){
    return gulp.src([ 
                assetsURL + '/css/vendor/animate.css', 
                assetsURL + '/css/vendor/bootstrap.min.css',
                assetsURL + '/css/vendor/et-line-icons.css',
                assetsURL + '/css/vendor/font-awesome.min.css',
                assetsURL + '/css/vendor/magnific-popup.css',
            ]).pipe(concat('vendor-pkg-1.css'))
            .pipe( gulp.dest(assetsURL + '/css/'));
});


gulp.task('concat-vendor-2', function(){
    return gulp.src([ 
                assetsURL + '/css/vendor/bootsnav.css', 
                assetsURL + '/css/vendor/style.css',
                assetsURL + '/css/vendor/responsive.css',
            ]).pipe(concat('vendor-pkg-2.css'))
            .pipe( gulp.dest(assetsURL + '/css/'));
});


gulp.task('cleanup', function(){
    
    var plugins = [
        uncss({
            html: [themeURL + '/**/*.php']
        })
    ];

    return gulp.src(assetsURL + '/css/*.css')
            .pipe(postcss(plugins))
            .pipe(gulp.dest(assetsURL + '/css/'));

}); 


gulp.task('compress', function(){
    
    var plugins = [
        cssnano({
            autoprefixer: false,
            reduceIdents: {
                keyframes: false
            },
            discardUnused: {
                keyframes: false
            },
            safe: true
        })
    ];
    return gulp.src(assetsURL + '/css/*.css')
            .pipe(postcss(plugins))
            .pipe(gulp.dest(assetsURL + '/css/'));
});


gulp.task('css',gulpSequence(
    'compile',
    'concat-vendor-1',
    'concat-vendor-2',
    'cleanup',
    'compress'
));


gulp.task('js', function(){
    return gulp.src(assetsURL + '/js/**/*.js')
      .pipe(sourcemaps.init())
      .pipe(concat('*.min.js'))
      .pipe(sourcemaps.write())
      .pipe(gulp.dest(assetsURL + '/js'));
});


gulp.task('build', [ 'css', 'js' ]);
  

gulp.task('watch', function () {
    // Endless stream mode
    gulp.watch(assetsURL + '/less/*.less', ['css']);
    gulp.watch(assetsURL + '/js/**/*.js', ['js']);
});
