var addon = require('./build/Release/get_interface_style.node');
module.exports = {
    isDarkModeEnabled: function() {
        return addon.getInterfaceStyle() === 'Dark';
    }
}