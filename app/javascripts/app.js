import '../../stylesheets/app.css'
import { initWeb3, addToIPFS, getImage,getNoOfDocs} from './eth_link'

// Initialize contract and IPFS
initWeb3();


//document.getElementById("start").onclick = function () { alert('hello!'); };

$(document).ready(function(){
    $('#start').click(function(){
       console.log('hey');
       console.log("test1 PRESSED");
        getNoOfDocs();    
  });
  });