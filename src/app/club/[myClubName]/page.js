'use client'
import styles from '@/styles/MyClub.module.css'
import Header from '@/app/components/Header'
import Tabs from '@mui/material/Tabs'
import Tab from '@mui/material/Tab'
import Box from '@mui/material/Box'
import { useState } from 'react'

const CustomTabPanel = (props) => {
  const { children, value, index, ...other } = props

  return (
    <div
      role="tabpanel"
      hidden={value !== index}
      id={`simple-tabpanel-${index}`}
      aria-labelledby={`simple-tab-${index}`}
      {...other}
    >
      {value === index && (
        <Box sx={{ p: 3 }}>
          {children}
        </Box>
      )}
    </div>
  )
}

const allProps = (index) => {
  return {
    id: `simple-tab-${index}`,
    'aria-controls': `simple-tabpanel-${index}`,
  }
}

const MyClub = () => {
  const [value, setValue] = useState(0)
  const handleChange = (e, newValue) => {
    setValue(newValue)
  }

  return (
    <div>
      <Header title='abc'/>
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
        <Tab label="정보" {...allProps(0)} />
        <Tab label="게시판" {...allProps(1)} />
        <Tab label="사진첩" {...allProps(2)} />
        <Tab label="채팅" {...allProps(3)} />
        <Tab label="마이" {...allProps(4)} />
      </Tabs>
      </Box>
      <CustomTabPanel value={value} index={0}>
        정보
      </CustomTabPanel>
      <CustomTabPanel value={value} index={1}>
        게시판
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