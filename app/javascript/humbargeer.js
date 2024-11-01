/**
 * トグルメニューの開閉
 * ページ内アンカーリンクがある場合はメニューを閉じる処理を行う
 */

// function clickToggleMenu() {
//   const body = document.getElementById("body");
//   const navContent = document.getElementById("navContent");
//   const toggleMenu = document.getElementById("toggleMenu");

//   // toggleMenuがdisplay:noneで非表示の場合は処理を終了
//   if (window.getComputedStyle(toggleMenu).display === "none") return;

//   // メニューを開閉する際のクラス名
//   const toggleOpenClassName = "js-open";

//   // メニューを開く
//   function openMenu() {
//     if (!navContent || !body) return;
//     // ナビゲーションの表示切り替え
//     navContent.classList.add(toggleOpenClassName);
//     // メニュー表示時のscroll制御
//     body.style.overflow = "hidden";
//   }

//   // メニューを閉じる
//   function closeMenu() {
//     if (!navContent || !body) return;
//     // ナビゲーションの表示切り替え
//     navContent.classList.remove(toggleOpenClassName);
//     // メニュー表示時のscroll制御
//     body.style.overflow = "";
//   }

//   // ページ内アンカーリンクの場合はメニューを閉じる
//   function closeMenuAnchorLink() {
//     // 現在のURLを取得する
//     const currentPathName = location.pathname;
//     const menuLinks = document
//       .getElementById("menu-menu")
//       .querySelectorAll("a");

//     if (menuLinks.length == 0 || !currentPathName) return;

//     menuLinks.forEach((menuLink) => {
//       const href = new URL(menuLink.href);
//       // 同じページかつURLに'#'が含まれている場合
//       if (currentPathName === href.pathname && href.hash) {
//         menuLink.addEventListener("click", () => {
//           closeMenu();
//         });
//       }
//     });
//   }
//   closeMenuAnchorLink();

//   if (navContent && toggleMenu) {
//     /**
//      * トグルメニューをクリックしnavを開閉
//      */
//     toggleMenu.addEventListener("click", () => {
//       // メニューオープン時のクラスがなければメニューを開く
//       if (!navContent.classList.contains(toggleOpenClassName)) {
//         openMenu();
//       } else {
//         closeMenu();
//       }
//     });
//   }
// }

// clickToggleMenu();

console.log("Hello!!");
document.addEventListener('DOMContentLoaded', function() {
    // .menu-item要素を取得
    var menuItem = document.querySelector('.menu-item');
    // .menu-content要素を取得
    var menuContent = document.querySelector('.menu-content');
    // .menu-item要素がクリックされたときの処理
    menuItem.addEventListener('click', function() {
      // .menu-contentのスタイルにleft: 0;を追加
      console.log("Hello!!");
      menuContent.style.left = '';
    });
  });