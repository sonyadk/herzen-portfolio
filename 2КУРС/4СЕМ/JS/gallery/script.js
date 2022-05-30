const but = document.getElementById('open');
const maind = document.getElementById('main');
const parser = new DOMParser();

but.addEventListener('click',
	async () => {
//https://kodaktor.ru/g/books_da523
	const res = await fetch('photo.xml');
	const stringContent = await res.text();
	const doc = parser.parseFromString(stringContent, "application/xml");
	const arr = doc.querySelectorAll('img1');
	arr.forEach((el)=> {
			const newImage = document.createElement('img');
			const smallImg  = el.querySelector('small1').textContent;
			newImage.src = smallImg;
			newImage.setAttribute(photo);
			maind.appendChild(newImage)
		})

    maind.addEventListener('click', (e) => {
		let el = e.target.closest('img ');
		let big.src = el.querySelector('small1').textContent;
		el.dataset.class = big;
		let s = '♥️'.repeat(+val);
		el.innerHTML =  s;
	}
// 	if (e.target.classList.contains('del')){
// 		let el = e.target.closest('tr').querySelector('.votes');
// 		if (+el.dataset.val > 0){
// 			let val = +(el.dataset.val) - 1;
// 			el.dataset.val = val;
// 			let s = '♥️'.repeat(+val);
// 			el.innerHTML = s;
// 		}
// 	}
// });


	})