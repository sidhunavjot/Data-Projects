select * from dbo.['Development Indicators$'];

-- top 5 countries rich (gdp high) and poor, year wise 2018.

select top 5
dbo.['Development Indicators$'].[Country Name] , dbo.['Development Indicators$'].[GDP (USD)] from dbo.['Development Indicators$']
where Year = 2018
order by dbo.['Development Indicators$'].[GDP (USD)] desc

select top 5
dbo.['Development Indicators$'].[Country Name] , dbo.['Development Indicators$'].[GDP (USD)] from dbo.['Development Indicators$']
where Year = 2018 AND [GDP (USD)] IS NOT NULL
order by dbo.['Development Indicators$'].[GDP (USD)] asc


-- yearwise growth gdp and per capita of afganistan


select 
YEAR, dbo.['Development Indicators$'].[GDP (USD)], dbo.['Development Indicators$'].[GDP per capita (USD)]
from dbo.['Development Indicators$']
where dbo.['Development Indicators$'].[Country Name] = 'Afghanistan' AND [GDP (USD)] IS NOT NULL
order by Year asc


-- country with highest death rate, birth rate, year wise.

select 
dbo.['Development Indicators$'].[Country Name], dbo.['Development Indicators$'].[Death rate, crude (per 1,000 people)], dbo.['Development Indicators$'].[Birth rate, crude (per 1,000 people)]
from dbo.['Development Indicators$'] 
where Year = 2000 AND [Death rate, crude (per 1,000 people)] IS NOT NULL

-- country wise highghest, lowest bithrate, death rate

-- highest death rate in a given year
select top 1
dbo.['Development Indicators$'].[Country Name], dbo.['Development Indicators$'].[Death rate, crude (per 1,000 people)], dbo.['Development Indicators$'].[Birth rate, crude (per 1,000 people)]
from dbo.['Development Indicators$'] 
where Year = 2000 AND [Death rate, crude (per 1,000 people)] IS NOT NULL
order by [Death rate, crude (per 1,000 people)] desc

-- lowest death rate in a given year

select top 1
dbo.['Development Indicators$'].[Country Name], dbo.['Development Indicators$'].[Death rate, crude (per 1,000 people)], dbo.['Development Indicators$'].[Birth rate, crude (per 1,000 people)]
from dbo.['Development Indicators$'] 
where Year = 2000 AND [Death rate, crude (per 1,000 people)] IS NOT NULL
order by [Death rate, crude (per 1,000 people)] asc

-- countries with low income, high income and upper income groups

select
DISTINCT [Country Name]

from dbo.['Development Indicators$']
where IncomeGroup = 'Low income'

select
DISTINCT [Country Name]

from dbo.['Development Indicators$']
where IncomeGroup = 'Upper middle income'

select
DISTINCT [Country Name]

from dbo.['Development Indicators$']
where IncomeGroup = 'High income: nonOECD' OR IncomeGroup = 'High income: OECD'

-- 


select
[Country Name], [Population density (people per sq# km of land area)], [Life expectancy at birth (years)],[Infant mortality rate (per 1,000 live births)], [Unemployment (% of total labor force) (modeled ILO estimate)]
from dbo.['Development Indicators$']
where Year = 2018

-- Most densly populated countries

select top 5
[Country Name], [Population density (people per sq# km of land area)]
from dbo.['Development Indicators$']
where Year = 2018
order by [Population density (people per sq# km of land area)] desc

