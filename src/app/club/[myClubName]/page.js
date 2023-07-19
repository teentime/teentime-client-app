'use client'
import styles from '@/styles/MyClub.module.css'
import Header from '@/app/components/Header'
import Tabs from '@mui/material/Tabs'
import Tab from '@mui/material/Tab'
import Box from '@mui/material/Box'
import { useState } from 'react'
import Board from '@/app/components/Board'

const CustomTabPanel = (props) => {
  const { children, value, index } = props

  return (
    <div
      hidden={value !== index}
    >
      {value === index && (
        <Box>
          {children}
        </Box>
      )}
    </div>
  )
}

const MyClub = () => {
  const [value, setValue] = useState(0)
  const handleChange = (e, newValue) => {
    setValue(newValue)
  }

  return (
    <div>
      <Header title='abc' isClub={true}/>
      <Box>
      <Tabs 
        value={value} 
        onChange={handleChange}
        textColor='#999999'
        indicatorColor='#ffffff'
        variant='fullWidth'
        
        sx={{
          height: '42px',
          '& .MuiTab-root': {
            minWidth: 'auto',
            fontSize: '14px',
            whiteSpace: 'nowrap'
          },
        }}
        TabIndicatorProps={{ style: { background: "#ffffff" } }}
      >
        <Tab label="정보"/>
        <Tab label="게시판"/>
        <Tab label="사진첩"/>
        <Tab label="채팅"/>
        <Tab label="마이"/>
      </Tabs>
      </Box>
      <CustomTabPanel value={value} index={0}>
        정보
      </CustomTabPanel>
      <CustomTabPanel value={value} index={1}>
        <Board/>
      </CustomTabPanel>
      <CustomTabPanel value={value} index={2}>
        사진첩
      </CustomTabPanel>
      <CustomTabPanel value={value} index={3}>
        채팅
      </CustomTabPanel>
      <CustomTabPanel value={value} index={4}>
        마이
      </CustomTabPanel>
    </div>
  )
}

export default MyClub