/*
  RoxyFileman - web based file manager. Ready to use with CKEditor, TinyMCE. 
  Can be easily integrated with any other WYSIWYG editor or CMS.

  Copyright (C) 2013, RoxyFileman.com - Lyubomir Arsov. All rights reserved.
  For licensing, see LICENSE.txt or http://RoxyFileman.com/license

  This program is free software: you can redistribute it and/or modify
  it under the terms of the GNU General Public License as published by
  the Free Software Foundation, either version 3 of the License.

  This program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.

  You should have received a copy of the GNU General Public License
  along with this program.  If not, see <http://www.gnu.org/licenses/>.

  Contact: Lyubomir Arsov, liubo (at) web-lobby.com
*/
function FileSelected(file) {
    var flag = $(window.parent.document).find('#hiddenFlag').val();
    if (flag === '1') {
        $(window.parent.document).find('#customRoxyImage').attr('src', file.fullPath);
        $(window.parent.document).find('#txthiddenImage').val(file.fullPath);
    } else if(flag === '2') {
        $(window.parent.document).find('#imageList').append('<div class="col-md-3"><button type="button" class="close remove-image" aria-label="Close"><span aria-hidden="true">x</span></button><img data-path="' + file.fullPath+'"width="100" src="' +
            file.fullPath + '"></div>');
   
    }
}
function GetSelectedValue(){
  /**
  * This function is called to retrieve selected value when custom integration is used.
  * Url parameter selected will override this value.
  */
  
  return "";
}
