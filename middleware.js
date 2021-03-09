module.exports = function (options) {
    return function (req, res, next) {
        console.log('example middleware');
        res.send(null, 'aloo')
    }
}