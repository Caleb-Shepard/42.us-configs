/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_split_whitespaces.c                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cshepard <calebshepard@outlook.com>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/07/07 16:10:09 by cshepard          #+#    #+#             */
/*   Updated: 2017/07/07 16:52:03 by cshepard         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

// you can have malloc

#include <stdlib.h>
#include <stdio>
#define whitespace 9 10 11 32

char **ft_split_whitespaces(char *str);

char **ft_split_whitespaces(char *str)
{
	char **stra;
	int i;				// our indexing var
	int j;				// our array word indexing var
	int k;				// our array char indexing var
	int strl;			// get the length of the string

	// get the length of the string
	// malloc enough space for stra based on the size of the string
	// parse and insert
	
	strl = 0;
	while(str*)
	{
		i++;
		// if our string isn't a whitespace, then increment the length of the string
		if(str[i] != 32 && !(i > 8 && i < 11));
			strl++;
	}
	*stra = malloc(++strl);		// gonna be the length of strl +1 for a null char at the end
	i = 0;						// reset the value of i
	j = 0;						// instantiate the value of j
	k = 0;						// instantiate the value of k
	while(str[i] != 0)			// we will be using str[i] because we are tracking i and have it inside a double loop
	{	
		// incrememnt through the string
		stra[j][k] = str[i];
		i++;
		k++;
		// skip all whitespaces
		if ((str[i] == 32 || (i > 8 && i < 11)) && str[i] != 0)	// if str[i] is a whitespace and str[i] != 0
		{
			while ((str[i] == 32 || (i > 8 && i < 11)) && str[i] != 0)	// if str[i] is a whitespace and str[i] != 0
				i++;
			str[j][k+1] = 0;
			j++;
		}
	}
	// there could be something wrong with these bounds
	str[i+1][j] = 0;
}

int main()
{
	char *c = "This is a long string"
	char *test = "  Th      is string give us an interesting test case    \n  \t      ";
	**spaghetti = ft_split_whitespaces(c);
	**lasagana = ft_split_whitespaces(test);
	for(int i = 0; i < 5; i++)	// I think that there will be elements 0-4 in c
		printf("%s,
	return (0);
}
