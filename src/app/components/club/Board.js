import styles from '@/styles/Board.module.css'
import Image from 'next/image'
import { useState } from 'react';
import Post from './Post';
import Notice from './Notice';

const Board = () => {
  const [currentValue, setCurrentValue] = useState("실시간 인기순");
  const [showOptions, setShowOptions] = useState(false);
  const handleOnChangeSelectValue = (e) => {
    setCurrentValue(e.target.getAttribute("value"));
  };

  return (
    <div className={styles.container}>
      <div className={styles.notice_container}>
        <div className={styles.notice_menu}>
          <div className={styles.text}>공지사항 <Image src='/assets/notice.svg' alt='Notice' width={20} height={20}/></div>
          <Image src='/assets/enterNotice.svg' alt='EnterNotice' width={20} height={20}/>
        </div>
        <div className={styles.notices}>
          <Notice username='관리자' title='제목' content='공지내용'/>
          <Notice username='관리자' title='제목' content='공지내용'/>
          <Notice username='관리자' title='제목' content='공지내용'/>
        </div>
      </div>
      <div className={styles.board_container}>
        <div className={styles.select} onClick={() => setShowOptions(!showOptions)}>
          <div className={styles.selected}>
            <div className={styles.label}>{currentValue}</div>
            {
              showOptions ? 
              <Image src='/assets/selectUp.svg' alt='Up' width={16} height={16}/>
              :
              <Image src='/assets/selectDown.svg' alt='Down' width={16} height={16}/>
            }
          </div>
          <div className={styles.option_container} style={{ display: showOptions ? 'block' : 'none'}}>
            <div className={styles.option} onClick={handleOnChangeSelectValue} value='최신순'>최신순</div>
            <div className={styles.option} onClick={handleOnChangeSelectValue} value='좋아요순'>좋아요순</div>
          </div>
        </div>
        <div className={styles.posts}>
          <Post username='사용자명' date='0월 0일 수요일 오전 8:12' title='제목' content='본문내용'/>
          <Post username='사용자명' date='0월 0일 수요일 오전 8:12' title='제목' content='본문내용'/>
          <Post username='사용자명' date='0월 0일 수요일 오전 8:12' title='제목' content='본문내용'/>
          <Post username='사용자명' date='0월 0일 수요일 오전 8:12' title='제목' content='본문내용'/>
        </div>
      </div>
      <div className={styles.write_btn}>
        <Image src='/assets/write.svg' alt='Write' width={24} height={24}/>
      </div>
    </div>
  )
}

export default Board