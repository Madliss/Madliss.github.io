var $ = function(id){
	return document.getElementById(id);
}



window.onload = function () {
    var list = document.getElementById('list');
    var boxs = list.children;
    var timer;

    function formateDate(date) {
        var y = date.getFullYear();
        var m = date.getMonth() + 1;
        var d = date.getDate();
        var h = date.getHours();
        var mi = date.getMinutes();
        m = m > 9 ? m : '0' + m;
        return y + '-' + m + '-' + d + ' ' + h + ':' + mi;
    }

    function removeNode(node) {
        node.parentNode.removeChild(node);
    }

    function praiseBox(box, el) {
        var txt = el.innerHTML;
        var praisesTotal = box.getElementsByClassName('praises-total')[0];
        var oldTotal = parseInt(praisesTotal.getAttribute('total'));
        var newTotal;
        if (txt == 'Like') {
            newTotal = oldTotal + 1;
            praisesTotal.setAttribute('total', newTotal);
            praisesTotal.innerHTML = (newTotal == 1) ? 'I like it' : 'Me and ' + oldTotal + 'people like it';
            el.innerHTML = 'Cancel praise';
        }
        else {
            newTotal = oldTotal - 1;
            praisesTotal.setAttribute('total', newTotal);
            praisesTotal.innerHTML = (newTotal == 0) ? '' : newTotal + 'people like it';
            el.innerHTML = 'Like';
        }
        praisesTotal.style.display = (newTotal == 0) ? 'none' : 'block';
    }

    function reply(box, el) {
        var commentList = box.getElementsByClassName('comment-list')[0];
        var textarea = box.getElementsByClassName('comment')[0];
        var commentBox = document.createElement('div');
        commentBox.className = 'comment-box clearfix';
        commentBox.setAttribute('user', 'self');
        commentBox.innerHTML =
            '<img class="myhead" src="images/ko.jpg" alt=""/>' +
                '<div class="comment-content">' +
                '<p class="comment-text"><span class="user">Me: </span>' + textarea.value + '</p>' +
                '<p class="comment-time">' +
                formateDate(new Date()) +
                '<a href="javascript:;" class="comment-praise" total="0" my="0" style="">Like</a>' +
                '<a href="javascript:;" class="comment-operate">Delete</a>' +
                '</p>' +
                '</div>'
        commentList.appendChild(commentBox);
        textarea.value = '';
        textarea.onblur();
    }

    function praiseReply(el) {
        var myPraise = parseInt(el.getAttribute('my'));
        var oldTotal = parseInt(el.getAttribute('total'));
        var newTotal;
        if (myPraise == 0) {
            newTotal = oldTotal + 1;
            el.setAttribute('total', newTotal);
            el.setAttribute('my', 1);
            el.innerHTML = newTotal + ' Cancel praise';
        }
        else {
            newTotal = oldTotal - 1;
            el.setAttribute('total', newTotal);
            el.setAttribute('my', 0);
            el.innerHTML = (newTotal == 0) ? 'Like' : newTotal + ' Like';
        }
        el.style.display = (newTotal == 0) ? '' : 'inline-block'
    }


    function operate(el) {
        var commentBox = el.parentNode.parentNode.parentNode;
        var box = commentBox.parentNode.parentNode.parentNode;
        var txt = el.innerHTML;
        var user = commentBox.getElementsByClassName('user')[0].innerHTML;
        var textarea = box.getElementsByClassName('comment')[0];
        if (txt == 'Reply') {
            textarea.focus();
            textarea.value = 'Reply' + user;
            textarea.onkeyup();
        }
        else {
            removeNode(commentBox);
        }
    }

    for (var i = 0; i < boxs.length; i++) {

        boxs[i].onclick = function (e) {
            e = e || window.event;
            var el = e.srcElement;
            switch (el.className) {

                case 'close':
                    removeNode(el.parentNode);
                    break;

                case 'praise':
                    praiseBox(el.parentNode.parentNode.parentNode, el);
                    break;

             
                case 'btn':
                    reply(el.parentNode.parentNode.parentNode, el);
                    break

             
                case 'btn btn-off':
                    clearTimeout(timer);
                    break;
       
                case 'comment-praise':
                    praiseReply(el);
                    break;

          
                case 'comment-operate':
                    operate(el);
                    break;
            }
        }

 
        var textArea = boxs[i].getElementsByClassName('comment')[0];

    
        textArea.onfocus = function () {
            this.parentNode.className = 'text-box text-box-on';
            this.value = this.value == 'Comment...' ? '' : this.value;
            this.onkeyup();
        }


        textArea.onblur = function () {
            var me = this;
            var val = me.value;
            if (val == '') {
                timer = setTimeout(function () {
                    me.value = 'Comment...';
                    me.parentNode.className = 'text-box';
                }, 200);
            }
        }


        textArea.onkeyup = function () {
            var val = this.value;
            var len = val.length;
            var els = this.parentNode.children;
            var btn = els[1];
            var word = els[2];
            if (len <=0 || len > 140) {
                btn.className = 'btn btn-off';
            }
            else {
                btn.className = 'btn';
            }
            word.innerHTML = len + '/140';
        }

    }
}
